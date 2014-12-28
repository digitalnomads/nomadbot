infoMessages = ["Join #_coders to have a conversation that most of us don't understand", 'We know you like #_cheap-flight-tips so do we...',
"The first rule of #_smart-drugs is: You do not talk about #_smart-drugs. The second rule of #_smart-drugs is: You do not talk about #_smart-drugs ...",
"You're desperate? Don't have any money left? Your wife left you because you are a nomad? time to go to #_jobs",
"Do you feel like hitting your boss in the head? Tell us about it at #_nomad-beginners",
"Tell us about your #_ideas, so everyone can steal them... You weren't gonna do it anyway.",
"Throw your money out the window, join the #_bitcoin revolution",
"You're still reading this? Go to #_productivity", "In an average living room there are 1,242 objects Chuck Norris could use to kill you, #_housing"
"What nomads need, other than backpacks. #_gear Please don't ask about backpacks.",
"We don't have idea that it's for, but it sounds good #_music"]

module.exports = (robot) ->
  robot.hear /!tip/i, (msg) ->
    message = msg.message

    broadcastChannel = '#-_nomads'

    # Ignore topic and other messages
    return if typeof message.user.id == 'undefined'

    #Turn it off for now
    robot.messageRoom broadcastChannel, msg.random infoMessages