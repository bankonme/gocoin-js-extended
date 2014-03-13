# GoCoin Payout Accounts
#
class PayoutAccounts

  constructor: (@api) ->

  create: (params, callback) ->
    @api.client.logger.debug "PayoutAccounts::create called."
    route = "/merchants/#{params.id}/payout_accounts"
    options =
      method: 'POST'
      body: params.data
    @api.request(route, options, callback)

  list: (id, callback) ->
    @api.client.logger.debug "PayoutAccounts::get called."
    route = "/merchants/#{id}/payout_accounts"
    options = {}
    @api.request(route, options, callback)

module.exports = PayoutAccounts
