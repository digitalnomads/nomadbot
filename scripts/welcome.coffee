enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
leaveReplies = ['Are you still there?', 'Target lost', 'Searching']

module.exports = (robot) ->
  robot.hear  /.*$/i ,(msg) ->
    console.log "msg.type:#{msg.type}"
    if msg.subtype is 'channel_join'
      msg.send msg.random enterReplies