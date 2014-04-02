Client = require('gocoin').Client
Api_Ext = require './api-extended'
# A JavaScript API client for the GoCoin API.
#
class Client_Ext extends Client

  add_extensions: () ->
    @logger.debug 'Adding extension shortcut methods'
    @api = new Api_Ext(@)

    @user = @api.user
    @merchant = @api.merchant
    @payout_accounts = @api.payout_accounts
    @payouts = @api.payouts
    @invoices = @api.invoices
    @accounts = @api.accounts
    @apps = @api.apps
    @admin = @api.admin
    @util = @api.util

module.exports = Client_Ext
