# Description:
#   にこにこ大百科の辞書を呼び出す
#
# Author:
#   wataru
cheerio = require 'cheerio'
request = require 'request'
iconv = require "iconv"
Buffer = require("buffer").Buffer

encodeFetch = (encode) ->
  (url, callback) ->
    request.get
      url : url
      encoding: 'binary'
    , (err, response, body) ->
      if err
        return callback(err)
      conv = new iconv.Iconv(encode, 'UTF-8')
      body = new Buffer(body, 'binary');
      body = conv.convert(body).toString();
 
      callback null, response, body

eucFetch = encodeFetch("EUC-JP")

module.exports = (robot) ->
  robot.hear /(.+)is何/i, (msg) ->
    nicodic(msg.match[1],msg)

nicodic = (word,msg,callback) ->
  url = 'http://dic.nicovideo.jp/a/' + encodeURIComponent(word)
  request url, (_, res) ->
    $ = cheerio.load res.body
    p = $('div.article p').not('div.adsense-728 p').first().text()
    if p != ""
      msg.send p
    else
      hatenakeyword(word,msg)

hatenakeyword = (word,msg) ->
  url = 'http://d.hatena.ne.jp/keyword/' + encodeURIComponent(word)
  eucFetch url, (_, res, body) ->
    $ = cheerio.load(body)
    p = $('div.section').text()
    if p != ""
      msg.send p.trim()
    else
      msg.send "しらね"


