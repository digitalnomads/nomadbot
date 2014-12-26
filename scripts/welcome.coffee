enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
leaveReplies = ['Are you still there?', 'Target lost', 'Searching']

module.exports = (robot) ->
  robot.enter (msg) ->
    console.log "enter msg: #{msg}"

  robot.hear  /.*$/i ,(msg) ->
    console.log "#{msg}"

    if msg.subtype is 'channel_join'
      msg.send msg.random enterReplies