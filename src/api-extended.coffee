Api                        = require('gocoin').Api
Admin                      = require './api/admin'
Util                       = require './api/util'
Apps                       = require './api/apps'
PayoutAccounts             = require './api/payoutaccounts'

# The API interface for working with GoCoin resources.
#
class Api_Ext extends Api

  add_extensions: ()->
    @client.logger.debug 'Adding Extensions'
    @admin = new Admin(@)
    @util = new Util(@)
    @apps = new Apps(@)
    @payout_accounts = new PayoutAccounts(@)

module.exports = Api_Ext
