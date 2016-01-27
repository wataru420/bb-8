# Description:
#   HatenaBookmarkのAPIを利用した雑談
#
# Author:
#   wataru
cheerio = require 'cheerio'
request = require 'request'

cookie = 'imui-banner-hidden=83080350; jp.co.intra_mart.session.cookie=11pvn63t|1453698700394; AWSELB=8FAB35DD12BE99141D776E3BA1CE2435EBA3072C525738F5BFDE45AC4F44F8280966789DDC514581834A164C5F496E7E63FD57F8C8DD0D45C0FD3D532E4959E6D9F1C0CEF7; JSESSIONID=baaNBVGOY6WPr9n54Eqhv; opentoken=T1RLAQKj0kIbnCyL3mfWEie96AQ-d44lFhCfihI50mC6euEZM6CNJ-mmAACwcCYjzXW4SbwPl4Bed5617JOPzMbWLf8Mv-VP0JDhO7FWWr9Jc07cBkre76xpkWoTrWuVLcO6cjZBRTi3aInDmpSP4PpNXAXt16iZzdX4oQpVziCW3Fy_lVEIkB6xXBGQHgGWf8YbNjRQlsRJxTXY7X2H6zXDjTZFMZYjBGFIvuLQH0uuFhg7QylNjkLVDmjPgBFs8Fere6B7aCaupjxnIj6av8WNjAhj6kNSaV8xqDI*; __zlcmid=WeewUlxetxFFn1; _ga=GA1.2.1617099300.1441871905'

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
  robot.respond /nasca (\S+) ([0-9]+)/i, (msg) ->
    if msg.match[1] != ""
      getSchedules(msg.match[1],msg.match[2],msg)
