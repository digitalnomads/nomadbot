# Description:
#   Horse-hotel meme promotio
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
  "http://bigtexan.com/wp-content/uploads/2013/06/Horse-Hotel-Gate.jpg",
  "http://www.places.co.za/crs/photolarge/13899.jpg",
  "http://r-ec.bstatic.com/images/hotel/max300/771/7718723.jpg",
  "http://p.fod4.com/upload/aff3567c9abaad4b798a350dc1e1b1a3/lCWhED6uSiTcIsmGoWJg_Horse%20Thumbs%20Up.gif",
  "http://33.media.tumblr.com/21e1087bdd0f421acd9074fec4ef2d49/tumblr_n4lroaCLSp1s5suo9o1_400.gif",
  "http://i.huffpost.com/gen/1017234/thumbs/s-VIRGINIA-HORSE-FARM-large640.jpg",
  "http://www.scoutnetworkblog.com/wp-content/uploads/2011/05/horse-twin-peaks-living-room.jpg",
  "https://files.slack.com/files-pri/T02G7L49N-F02U6M6U6/slack_for_ios_upload.png",
  "http://ichef.bbci.co.uk/wwtravel/608_342/images/live/p0/1d/5l/p01d5ltl.jpg"
]

module.exports = (robot) ->
  regex = /hors/

  robot.hear regex, (msg) ->
    msg.send msg.random horses
