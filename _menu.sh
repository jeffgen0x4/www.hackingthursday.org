#!/usr/bin/env bash

gen_menu_yml(){
    for yr in $(seq 2008 $(date +"%Y") | sort -r ) ; do
        cat <<EOD
- label: $yr
  items:
EOD

        find weeklynote/ -type f -name "*.md" | grep -e "$yr-" | sort -r | while read -r line; do
            item=$line
            item=${item#weeklynote/}
            item=${item%.md}
            cat <<EOD
    - name: $item
      link: "/weeklynote/$item"
EOD
        done

    done
}

gen_menu_yml > _data/menu.yml
