module.exports = (robot) ->
  robot.hear /.*$/i, (msg) ->
    message = msg.message

    # ignore topic and other messages
    return if typeof message.user.id == 'undefined'

    robot.messageRoom '#_repeater', "Nomad @#{msg.message.user.name} in ##{msg.message.user.room} is saying #{msg.message.text}"