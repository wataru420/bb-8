# Description:
#   HatenaBookmarkのAPIを利用した雑談
#
# Author:
#   wataru

module.exports = (robot) ->
  #robot.hear /(https?|ftp)(:\/\/[-_.!~*\'()a-zA-Z0-9;\/?:\@&=+\$,%#]+)/i, (msg) ->
  robot.hear /(?:^|[\s　]+)((?:https?|ftp):\/\/[^\s　]+)/i, (msg) ->
    url = 'http://b.hatena.ne.jp/entry/jsonlite/?url=' + encodeURIComponent(msg.match[1])
    request = msg.http(url).get()
    request (err, res, body) ->
      if body != "null"
        json = JSON.parse body

        res = ""
        for bookmark in json.bookmarks when bookmark.comment.length > res.length
          res = bookmark.comment
        if res != ""
          msg.send res
