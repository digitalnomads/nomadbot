# Description:
#   Horse-hotel meme promotion
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   horse - Display a horse hotel promotional info
#
# Author:
#   skat

horses = [
  "http://bigtexan.com/wp-content/uploads/2013/06/Horse-Hotel-Gate.jpg"
]

module.exports = (robot) ->
  regex = /horse\s*it/i

  robot.hear regex, (msg) ->
    msg.send msg.random horses