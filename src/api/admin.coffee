# GoCoin Admin Class
#
class Admin
  constructor: (@api) ->

  createUser: (params, callback) ->
    @api.client.logger.debug "User::create called."
    route = '/users';
    options =
      method: 'POST'
      body: params.data
    @api.request(route, options, callback)

  getUser: (id, callback) ->
    @api.client.logger.debug "User::get called."
    route = "/users/#{id}"
    options = {}
    @api.request(route, options, callback)

  deleteUser: (id, callback) ->
    @api.client.logger.debug "User::delete called."
    route = "/users/#{id}"
    options = 
      method: 'DELETE'
    @api.request(route, options, callback)

  listUsers: (callback) ->
    @api.client.logger.debug "User::list called."
    route = '/users';
    options = {}
    @api.request(route, options, callback)

  createMerchant: (params, callback) ->
    @api.client.logger.debug "Merchant::create called."
    route = '/merchants'
    options = 
      method: 'POST'
      body: params.data
    @api.request(route, options, callback)

  deleteMerchant: (id, callback) ->
    @api.client.logger.debug "Merchant::delete called."
    route = "/merchants/#{id}"
    options = 
      method: 'DELETE'
    @api.request(route, options, callback)

  listMerchants: (callback) ->
    @api.client.logger.debug "Merchant::list called."
    route = '/merchants'
    options = {}
    @api.request(route, options, callback)

  getMerchantUsers: (id, callback) ->
    @api.client.logger.debug "MerchantUsers::get called."
    route = "/merchants/#{id}/users"
    options = {}
    @api.request(route, options, callback)

  addMerchantUser: (params, callback) ->
    @api.client.logger.debug "MerchantUsers::put called."
    route = "/merchants/#{params.mid}/users"
    options =
      method: 'POST'
      body: params.data
    @api.request(route, options, callback)

  deleteMerchantUser: (params, callback) ->
    @api.client.logger.debug "MerchantUsers::delete called."
    route = "/merchants/#{params.mid}/users/#{params.uid}"
    options = 
      method: 'DELETE'
    @api.request(route, options, callback)

  fulfillPayout: (params, callback) ->
    @api.client.logger.debug "Payouts::fulfill called."
    route = "/payouts/#{params.conversion_id}/fulfill"
    options =
      method: 'PATCH'
    @api.request(route, options, callback)

module.exports = Admin