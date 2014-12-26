enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
leaveReplies = ['Are you still there?', 'Target lost', 'Searching']

module.exports = (robot) ->
  robot.enter (msg) ->
    console.log 'enter is here'
    for key, value of msg
      console.log "#{key} is #{value}"

  robot.hear  // ,(msg) ->
    console.log 'message is here'
    for key, value of msg
      console.log "#{key} is #{value}"

    if msg.subtype is 'channel_join'
      msg.send msg.random enterReplies