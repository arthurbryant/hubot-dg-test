module.exports = (robot) ->
  robot.hear /hello/i, (msg) ->
    msg.send 'Hi, master. Robot is here.'

  robot.hear /sports/i, (msg) ->
    msg.emote 'I like basket best!'

  robot.hear /study (.*) hard/i, (msg) ->
    course = msg.match[1]
    if course is 'math'
      msg.reply 'Good at math'
    else
      msg.reply 'Good at others'
