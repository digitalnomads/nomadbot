enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
leaveReplies = ['Are you still there?', 'Target lost', 'Searching']

module.exports = (robot) ->
  robot.enter (msg) ->
    console.log "enter msg.subtype: #{msg.subtype}"
    console.log "enter msg.type: #{msg.type}"

  robot.hear  /.*$/i ,(msg) ->
    console.log "msg.type:#{msg.message.type}"
    console.log "msg.subtype:#{msg.message.subtype}"
    if msg.subtype is 'channel_join'
      msg.send msg.random enterReplies