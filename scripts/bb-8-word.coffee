module.exports = (robot) ->
  robot.hear /RYUSEI|R.Y.U.S.E.I|りゅうせい|リュウセイ|流星|ryusei/i, (msg) ->
      msg.send msg.random [
        "OOH OOH! SAY IT NOW, OOH OOH!",
        "OOH OOH! SAY IT! STARS SHINE",
        "OOH OOH! SAY IT 煌めいて"
      ]

  robot.hear /OOH OOH! SAY IT/i, (msg) ->
      msg.send msg.random [
        "風になって遊ぶ...",
        "闇に映える光...",
        "星空の下...",
        "喘息で STAR SHINE 駆けるほうき星が",
        "輝く光が...誘う行方..."
      ]

  robot.hear /OOH OOH!/i, (msg) ->
      msg.send msg.random [
        "SAY IT NOW",
        "SAY IT!",
        "SAY IT."
      ]

  robot.hear /はげ！/i, (msg) ->
      msg.send msg.random [
        "はね！",
        "はげてねーから〜"
      ]

  robot.hear /スヤァ|ｽﾔｧ|眠い|寝てた|クソネミ|くそねみ/i, (msg) ->
      msg.send msg.random [
        "( ˘ω˘)ｽﾔｧ"
      ]

  robot.hear /ンゴ|ﾝｺﾞ/i, (msg) ->
      msg.send msg.random [
        "ヒェ〜ェwwwwwwwwwwwwww",
        "大草原不可避",
        "それ腹筋崩壊案件やな",
        "クソワロタwwwwwwww",
        "ファッ！？wwwwww",
        "ｱｯｵｩｱｯｵｩ",
        "S西っと"
      ]

  robot.hear /むかつく|ムカつく|イラつく|イライラ|いらつく|いらいら/i, (msg) ->
      msg.send msg.random [
        "ｺﾒﾋﾟｷｯ★カルシュウム案件だわ〜",
        "殴ろう",
        "ザッケローーーーーーーーーー西野",
        "ざっけざっけ",
        "ざっけろーーーーーーーーズンドコ！",
        "わちきーーーーーーーーーーー",
        "S西っと"
      ]
      
  robot.hear /おちんちん/i, (msg) ->
      msg.send msg.random [
        "びろ〜ん"
      ]
      
  robot.hear /なんの！/i, (msg) ->
      msg.send msg.random [
        "お惣菜です！",
        "お惣菜です！",
        "お惣菜です！",
        "お惣菜です！",
        "ドゥルルルルルルルルルー..ブン!お惣菜です！",
        "ドゥルルルルルルルルルー..ブン!お惣菜です！",
        "ドゥルルルルルルルルルー..ブン!お惣菜です！",
        "ドゥルルルルルルルルルー..ブン! オリジンのお総菜です！",
        "ドゥルルルルルルルルルー..ブン! オリジンのお総菜です！",
        "ドゥルルルルルルルルルー..ブン!プリンです！"
      ]
      
  robot.hear /いまから出社/i, (msg) ->
      msg.send msg.random [
        "ザッケローニ",
        "S西っと",
        "ざっけろコポミ"
      ]

  robot.hear /ぱこ|パコ|ぱっこーん|パッコーン/i, (msg) ->
      msg.send msg.random [
        "パコパカじゃね〜から〜",
        "正直2回だけパコった",
        "有機的オナホじゃねーから",
        "A瀬さんとパコったん？",
        "カジュアルにパコろ"
      ]

  robot.hear /それな$|それな！|それな!/i, (msg) ->
      msg.send msg.random [
        "http://www.hanakuro.jp/wp-content/uploads/2014/10/446px-Uncle_Sam_pointing_finger1.jpg",
        "https://pbs.twimg.com/profile_images/421596690286526465/pHnwpZU_.jpeg",
        "http://d2dcan0armyq93.cloudfront.net/photo/odai/400/f678aa1a332b9ba6e0ca666c7d5969c6_400.jpg",
        "http://cdn-ak.f.st-hatena.com/images/fotolife/h/horo3341/20150513/20150513233048.jpg",
        "http://i0.wp.com/kaola.jp/wp-content/uploads/2014/12/386994b61d9371f5dbfc239f3103f110.jpg?resize=500%2C148",
        "http://i2.wp.com/kaola.jp/wp-content/uploads/2014/12/dd9e2bff41509a95029712f41916abd4.jpg",
        "http://bokemato.com/img/17456392.jpg",
        "(つ >ω●)つ それな！"
      ]


  robot.hear /たいっちたいっち/i, (msg) ->
      msg.send msg.random [
        "うざみぃぃぃぃぃぃ"
      ]

  robot.hear /アスペ/i, (msg) ->
      msg.send msg.random [
        "> アスペルガー症候群は、自閉症のひとつであるとされている病気。しかし、自閉症とは違い、他者とコミュニケーションを取ろうとするのがこの病気の特徴です。",
        "> アスペルガー症候群は自閉症スペクトラム障害に属しますが、他の自閉症スペクトラム障害と比べて、知能低下を認めない事が特徴になります。",
        "> 知能は正常（むしろ高い場合もある）ではあるけども、人と上手にコミュニケーションが取れなかったり、興味がかなり極端に限定され、それによって日常生活に支障を来たしている場合、アスペルガー症候群の疑いがあります",
        "> 私たちが相手に気遣いをする時、それは相手の立場になってみるという「想像」とすることで、「もし自分が〇〇さんだったら、これをされたらイヤだな」「これをされたらとても嬉しいな」と判断します。アスペルガー症候群の方はそれがとても苦手なのです。",
        "> アスペルガー症候群の方は、興味やこだわりが強いことが多いことが知られています。アスペルガー症候群には有名人・著名人が多いと言われていますが、これは興味やこだわりの強さが良くはたらいた例になります。"
      ]

  robot.hear /(.+)るお$/i, (msg) ->
    msg.reply "#{msg.match[1]}るﾝｺﾞｫ!!"

  robot.hear /(.+)いお$/i, (msg) ->
    msg.reply "#{msg.match[1]}いンゴね〜"
