Client = require('gocoin').Client

# A JavaScript API client for the GoCoin API.
#
class Client_Ext extends Client

  add_extensions: () ->

    @api = new Api_Ext(@)

    @user = @api.user
    @merchant = @api.merchant
    @merchantusers = @api.merchantusers
    @merchantpayoutaddresses = @api.merchantpayoutaddresses
    @apps = @api.apps
    @invoices = @api.invoices
    @accounts = @api.accounts
    @admin = @api.admin
    @util = @api.util

module.exports = Client_Ext
