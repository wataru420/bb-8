# Description:
#   HatenaBookmarkのAPIを利用した雑談
#
# Author:
#   wataru
cheerio = require 'cheerio'
request = require 'request'

cookie = process.env.NASCA_COOKIE

getSchedules = (id,date,msg) ->
  url = 'https://imt.services.isca.jp/imart/collaboration/schedule/user/calendar/find_personal_day?'
  url += "target=#{id}&"
  url += "displayDate=#{date}&"
  options = 
    url : url
    headers : {'Cookie': cookie}

  request options, (err, res, body) ->
    json = JSON.parse body
    res = """#{json.data.title}

    """
    for s in json.data.schedules
      res += """
      
      ---------------
      #{s.startDateString[0]} #{s.startDateString[1]}〜#{s.endDateString[0]} #{s.endDateString[1]}
      #{s.title}
      #{s.joinUser}
      
      """
    msg.send res.toString()

module.exports = (robot) ->
  unless cookie?
    robot.logger.error 'process.env.NASCA_COOKIE is not defined'
    return

  robot.respond /nasca (\S+) ([0-9]+)/i, (msg) ->
    if msg.match[1] != ""
      getSchedules(msg.match[1],msg.match[2],msg)
