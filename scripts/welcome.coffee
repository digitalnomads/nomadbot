enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
leaveReplies = ['Are you still there?', 'Target lost', 'Searching']

module.exports = (robot) ->
  robot.enter (msg) ->
    console.log ('enterrring!')
    msg.send msg.random enterReplies
  robot.leave (msg) ->
    console.log ('leaving!')
    msg.send msg.random leaveReplies