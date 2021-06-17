#!/usr/bin/env python

import codecs
import sys
import wikidot

def write_unicode_file(path_to_file, content):
    try:
        out_file = codecs.open(path_to_file,encoding='utf-8', mode='w')
        out_file.write(content)
    except:
        print("Error on writing to file %s." % path_to_file)

def wikidot_to_markdown(fpath,out_fpath):
    __converter = wikidot.WikidotToMarkdown()

    f = codecs.open(fpath, encoding='utf-8')
    text = f.read()

    # write the complete files to the output directory:
    complete_text = __converter.convert(text)
    write_unicode_file("%s" % (out_fpath),complete_text)

if __name__ == '__main__':
    print(sys.argv)
    i_path = sys.argv[1]
    o_path = sys.argv[2]
    wikidot_to_markdown(i_path, o_path)
