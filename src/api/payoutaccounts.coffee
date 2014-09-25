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

  get: (id, callback) ->
    @api.client.logger.debug "PayoutAccounts::get called."
    route = "/payout_accounts/#{id}"
    options = {}
    @api.request(route, options, callback)

  list: (id, callback) ->
    @api.client.logger.debug "PayoutAccounts::list called."
    route = "/merchants/#{id}/payout_accounts"
    options = {}
    @api.request(route, options, callback)

  confirm: (params, callback) ->
    @api.client.logger.debug "PayoutAccounts::confirm called."
    route = "/payout_accounts/#{params.id}/confirm"
    options =
      method: 'PUT'
      body: params.data
    @api.request(route, options, callback)

  setAsPrimary: (id, callback) ->
    @api.client.logger.debug "PayoutAccounts::setAsPrimary called."
    route = "/payout_accounts/#{id}/set_as_primary"
    options =
      method: 'PUT'
    @api.request(route, options, callback)

  sendConfirmationEmail: (id, callback) ->
    @api.client.logger.debug "PayoutAccounts::setAsPrimary called."
    route = "/payout_accounts/#{id}/request_new_confirmation_email"
    options =
      method: 'POST'
    @api.request(route, options, callback)

module.exports = PayoutAccounts
