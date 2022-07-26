# 2009 Yahoo hacking day 心得分享

捷運站時聊了一下，依記憶中的順序簡記如下:

- Mat
  - 這次建了一個工具頁面。想讓作業力可以集縮在同一個地方。不過使用率其實不如想像。大家本身就己經有現成的 IM client solution。 然後 IRC 最方便的地方，大概就是非常容易相互傳連結。

- FourDolloars, Mat:
  - 在開發過程中，VCS蓋來蓋去的,相互 merge 的問題花了不少時間在上面。
  - 我想若參加多人開發的活動時，可以預先準備好 merge 的工具跟慣例，以確保參與的開發者，能較順利進入多人分工開發的狀態。
  - BTW, 坦白說， hg 在預設的狀態下， branch 的使用的確會交錯影響到，這一點不甚理想。

- Rex:
  - 所有人用同一機器與帳號，同樣都用 vim 編輯。直接面對面溝通，用腳踹對方作為檔案解鎖協定。萬一有問題得討論解決， 就拉張椅子來 [Pair Programming](https://en.wikipedia.org/wiki/Pair_programming)。
  - 若場地太吵，就拉 screen -x 出來進行 Pair Programming，對話都在螢幕上。 ( 驚！ 真是大殺招！！！ )
  - 考慮過用 [Gobby](https://www.example.com) or [Bespin](https://labs.mozilla.com/bespin/) 等[遠端協同工具](https://en.wikipedia.org/wiki/Collaborative_real-time_editor)，但其實沒有一個比腳踹人協定快。

- pct, kcliu, fourdollars, Mat:
  - 程式結構理解，由於成員都有 trace code 的能力，因此覺得用一問一答的方式，快速有效，不一定要花大把時間寫文件。
  - 同時，我們發現大部分的時間都花在 debug 上，因此，在行前就先一起準備好相關的 debug 工具及基本除錯方法，大大有效！！！
  - ( 如這一次 kcliu, pct 學了 firebug 的除錯方式，對解問題跟實作非常有幫助 )

- Mat:
  - 其實簡報的部分，請 pct 在後台幫我練了 5-6 次 ( thank!! )後，就比較有把握在時間內講完了。
  - 對了，我還有弄了一個計數器

```
#!/bin/bash

for (( x=-21; $x < 100; x+=2 ))

do

DISPLAY=:0 osd_cat \
  --pos=bottom \
  --lines=7 \
  --align=right \
  --font='10x20' \
  --color=green \
  --delay=1 <<EOF

$x  $x  $x
$x  $x  $x
$x  $x  $x

EOF

sleep 1

done
```

- Mat: 感覺其實週四偶爾的心得分享，就是一個對自己是很好的分享練習。 ( lightening share!? )

- pct:
  - 覺得這次有得獎的，都俱備相當程度的完整性。( 好像都是之前就先作好了 ) 之前我們或許也可以提前作好準備

- fourdollars, pct, Mat, kcliu:
  - 開發過程中，我們其實在資料結構上花了不少的時間在校對調整。(因為資料結構直接影響功能性)
  - 此外，建議會有一個人統籌資料結構介面的設計。像是 CRUD ( create/read/update/delete ) 跟 cgi 的部分。可以簡省很多的溝通跟協調的時間

- pct, Rex, fourdollars:
  - pct:大象砍螞蟻 (?)
  - pct:我們想借一個現在的架構來解決一個問題，最後卡關，而沒辦法那麼快就達到目的，決定打掉重鍊。
  - pct:這個過程多花了三個多小時。
  - Rex:我們在硬接某個服務時，也遇到一樣的事。原先要某個語言 (php) 硬幹，但是一直找不到工具與解法。最後拿另外一個方便的語言 (perl) 寫好，再傳給原生語言
  - Rex: 這種時間為最優先的狀態，沒有架構就是最好的架構。如果要分工，就用最簡單的 http/file pipe 作為介面。程式可以馬上動，就是最佳解。切忌幫別人的 library debug (包含官方 Yahoo API)

- fourdollars, pct:
  - 覺得 test case 對程式的改善跟實作上有幫助!
  - BTW, Mat 並不知道自己寫了 test case。
  - 原來這個 test case ,就只是一小段簡單測 data access 的 javascript function call.
  - 討論到這裡，我們覺得 prototype 的"可測試"對專案推進很有效果。

- pct:
  - 看到有用到 [blueprint](https://www.blueprintcss.org/), 可以想成是 css 的 builder
