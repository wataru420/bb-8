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

  robot.hear /ンゴ|ﾝｺﾞ/i, (msg) ->
      msg.send msg.random [
        "ヒェ〜ェwwwwwwwwwwwwww",
        "大草原不可避",
        "それ腹筋崩壊案件やな",
        "クソワロタwwwwwwww",
        "ファッ！？wwwwww",
        "S西っと"
      ]

  robot.hear /むかつく|ムカつく|イラつく|イライラ|いらつく|いらいら/i, (msg) ->
      msg.send msg.random [
        "ｺﾒﾋﾟｷｶﾙｼｳﾑ案件やな〜",
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

  robot.hear /ぱこ|パコ|ぱっこーん|パッコーン/i, (msg) ->
      msg.send msg.random [
        "パコパカじゃね〜から〜",
        "正直2回だけパコった",
        "有機的オナホじゃねーから",
        "A瀬さんとパコったん？",
        "カジュアルにパコろ"
      ]


  robot.hear /(.+)いお$/i, (msg) ->
    msg.reply "#{msg.match[1]}いンゴね〜"
