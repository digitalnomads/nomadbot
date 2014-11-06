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
  "http://33.media.tumblr.com/21e1087bdd0f421acd9074fec4ef2d49/tumblr_n4lroaCLSp1s5suo9o1_400.gif"
]

module.exports = (robot) ->
  regex = /horse/

  robot.hear regex, (msg) ->
    msg.send msg.random horses