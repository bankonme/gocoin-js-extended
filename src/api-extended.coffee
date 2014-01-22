Api                        = require('gocoin').Api
Admin                      = require './api/admin'
Util                       = require './api/util'
Merchantusers              = require './api/merchantusers'
Merchantpayoutaddresses    = require './api/merchantpayoutaddresses'
Apps                       = require './api/apps'

# The API interface for working with GoCoin resources.
#
class Api_Ext extends Api

  add_extension: ()->
    @admin = new Admin(@)
    @util = new Util(@)
    @merchantusers = new Merchantusers(@)
    @merchantpayoutaddresses = new Merchantpayoutaddresses(@)
    @apps = new Apps(@)

module.exports = Api_Ext
