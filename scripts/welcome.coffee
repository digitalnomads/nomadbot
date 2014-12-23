module.exports = (robot) ->
  robot.enter (msg) =>
    console.log msg

    # broadcastChannel = '#_repeater'

    # ignore topic and other messages
    # return if typeof message.user.id == 'undefined'

    #Turn it off for now
    #robot.messageRoom broadcastChannel, "@#{msg.message.user.name} in ##{msg.message.user.room} is saying -> #{msg.message.text}"