# Description:
#   にこにこ大百科の辞書を呼び出す
#
# Author:
#   wataru
cheerio = require 'cheerio'
request = require 'request'

module.exports = (robot) ->
  robot.hear /(.+)is何$/i, (msg) ->
    url = 'http://dic.nicovideo.jp/a/' + encodeURIComponent(msg.match[1])
    request url, (_, res) ->
      $ = cheerio.load res.body
      p = $('div.article p').not('div.adsense-728 p').first().text()
      if p != ""
        msg.send p
