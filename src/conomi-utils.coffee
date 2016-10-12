# Description
#   ちょっとしたツールを収録
#
# Commands:
#   hubot アダプター - 今使っているアダプターを返す
#   hubot ご一緒に <text> - <text> を鸚鵡返しする
#   hubot 何時 - 今の時刻を教えてくれる
#
# Author:
#   yagizombie <yanagihara+zombie@brainpad.co.jp>

module.exports = (robot) ->
  robot.respond /(アダプター|ADAPTER)$/i, (msg) ->
    msg.send robot.adapterName

  robot.respond /(ECHO|ご一緒に|せーの)(.*)$/i, (msg) ->
    msg.send msg.match[2]

  robot.respond /TIME|何時$/i, (msg) ->
    days = ["日", "月", "火", "水", "木", "金", "土"]
    d = new Date
    m = d.getMonth() + 1
    msg.send "えーっと、" + d.getFullYear() + "年" + m + "月" + d.getDate() + "日(" + days[d.getDay()] + ")" + d.getHours() + "時" + d.getMinutes() + "分" + d.getSeconds() + "秒 かな。。"
