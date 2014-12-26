infoMessages = ['Join #_gear to find tips on equipment, clothes and other goddies you can buy',
"Join #_coders to have a conversation that most of us don't understand", 'We know you like #_cheap-flight-tips so do we...',
"The first rule of #_smart-drugs is: You do not talk about #_smart-drugs. The second rule of #_smart-drugs is: You do not talk about #_smart-drugs ..."]

module.exports = (robot) ->
  robot.hear /tip please*$/i, (msg) ->
    message = msg.message
    console.log('tip please')

    broadcastChannel = '#-_nomads'

    # Ignore topic and other messages
    return if typeof message.user.id == 'undefined'

    #Turn it off for now
    robot.messageRoom broadcastChannel, msg.random infoMessages