

# KalaOke


    Milestone:

         1. Kernel and base system ------ 需開發板
         2. Build system ------ 需開發板
         3. Frontend ui and osd  ------ 不需開發板
         4. Video Player based on gstreamer ------ 需開發板

# Skalde


    Next Milestone

   1. 概念: Physical Social Network
   2. 原理：當帶著NB/手機靠近AP時，AP 會將 NB/手機 的轉到登錄畫面，可以讓 User 註冊他的手機或NB (依據 MAC Address 對應個人身份)
   3. 技術：
         1. 註冊手機： AP會掃描周圍的buletooth，然後發 PIN CODE，讓使用者執行Bluetooth Pairing 配對，則可辨別該使用者之手機。
         2. 註冊NB： 以 MAC address 對應 Laptop 主人 
   4. Ps：
         1. 正直的thinker提的殺手級應用 (  請洽知情人士 )

需要手機測試，需要藍牙等。需要 server side 模組。技術門檻較高

# 軟/硬體 social network

Web 2.0 的史萊姆之家。

   1. 目的：懶人安裝。
         1. 類似網站及其缺點：
         2. Lnux Mint - 無Mirror站、多國語系
         3. CNR - 無Mirror站、多國語係系
         4. Suse One Click Install - 網站爛
   2. 啟動計劃：
         1. 使用gnome-app install 的.desktop 作為最初資料庫。 
   3. Milestone
         1. Client app: 使用apt url 安裝軟體
         2. Web Site: gnome-app install .desktop 多人翻譯系統 ，翻好後的資料可以被export成.desktop
   4. 相關簡報: <http://docs.google.com/Present?docid=ajd93zkqrjq5_250czqtwhdp>  

首先要做的事情是先把類似 gnome-app-install 的應用軟體做成網頁版，後來才可以繼續進行翻譯或者是其他功能的實作。
Hardware 偵測與排除

    * <http://jaiku.com/channel/Skalde/presence/40270730>   

訊息交換的平台，很類似知識+，比知識+更好的地方是資訊準確，比起軟體平台來說比較簡單

# Random Choice


   1. 目的：若一事難以解決，則設定候選結果，然後讓電腦幫忙挑出結果。
   2. 介面：Web
   3.  輪盤式

比較晚做，可以等到 SVG 時做完後在繼續做。
<http://bingo.handlino.com/>   有做出類似的功能~

# SVG Animation Editor


    * 目的: 編輯 SVG 動晝
    * 介面: firefox
    * 將畫好的靜態畫面，載入編輯。提供 time line 和一系統的動畫效果。例如，旋轉、移動、縮放、淡出、淡入、變色、拋物線移動、HSM 等等。將編輯的結果存成一劇本，可嵌入網頁執行，可用 javascript 引發，甚至能作成 game 。
    * Milestone
         1. timeline
         2. 移動
         3. 縮放
         4. 旋轉

現在需要做的是像是旋轉移動的效果，但是需要一個共通的架構可以讓其他人來 follow，thinker 目前有基本上的架構，但不確定這個架構會不會在繼續改變。但是需要效果的需求再去修改。需要移動、timeline、縮放、旋轉。
# Lazy Js


(<http://www.assembla.com/spaces/lazyjs>   )

   1. 目的：目標是放在擴充javascript的標準lib., 既然有 php.js ，那來個python.js也不錯.
   2. 相依：Jquery.
   3. Milestone:
         1. Sting Methods
         2. Array Methods
         3. List Methods  

當寫javascript時有一些操作，可以用python的操作方式來操作javascript。有可能每個method在各個瀏覽器都是不同的，需要共同的函式庫來處理。python.js需要跟jquery可以一起使用。

# 網路麻將


    * Server Side 提供麻將桌的 Web API (最主要的部份)
    * Client Side 可以接 CUI/GUI/... 讓程式開發者撰寫自己的應用程式 

里程碑：有一個簡單的介面，可以4個人輪流打牌。有token的聊天室。chihchun：可以用jms，thinker可以用gtalk作為backend。

參考
中國的蓝迪游戏 將其線上遊戲已宣告 GPL 授權，採以 Qt 開發。


# 魔術方塊


    * 在firefox 上玩的魔術方塊

# Eagle Eye :

Eagle Eye is an Inference Engine and a bot for Ikariam robber. Visit <http://www.assembla.com/wiki/show/eagle-eye>   for more details.
應用程式 (Application)

# Battery management applet for IBM Thinkpad :


    * Purpose: A battery managemnet wizard for end user.
    * References: <http://www.thinkwiki.org/wiki/Tp_smapi>  


# PHP Interactive Shell


    * 目的：類似 python interactive shell.