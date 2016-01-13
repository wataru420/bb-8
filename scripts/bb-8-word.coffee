module.exports = (robot) ->
  robot.hear /RYUSEI|R.Y.U.S.E.I|りゅうせい|リュウセイ|流星|ryusei/i, (msg) ->
      msg.send msg.random [
        "OOH OHH! SAY IT NOW, OOH OOH!",
        "OOH OHH! SAY IT! STARS SHINE",
        "OOH OHH! SAY IT 煌めいて"
      ]

  robot.hear /はげ！/i, (msg) ->
      msg.send msg.random [
        "はね！",
        "はげてねーから〜"
      ]
