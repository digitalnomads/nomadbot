module.exports = (robot) ->
  mainRoom = 'nomadbot'
  robot.enter (msg) ->
    if msg.match[2] = mainRoom
      msg.send "Welcome #{msg.message.user.name}! Please introduce yourself and mention your nomad status."
    else
      console.log "#{msg.message.user.name} enters #{msg.match[2]}"