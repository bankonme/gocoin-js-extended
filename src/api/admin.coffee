# GoCoin Admin Class
#
class Admin
  constructor: (@api) ->

    create: (params, callback) ->
      @api.client.logger.debug "User::create called."
      route = '/users';
      options =
        method: 'POST'
        body: params.data
      @api.request(route, options, callback)

    get: (id, callback) ->
      @api.client.logger.debug "User::get called."
      route = "/users/#{id}"
      options = {}
      @api.request(route, options, callback)

    delete: (id, callback) ->
      @api.client.logger.debug "User::delete called."
      route = "/users/#{id}"
      options = 
        method: 'DELETE'
      @api.request(route, options, callback)

    list: (callback) ->
      @api.client.logger.debug "User::list called."
      route = '/users';
      options = {}
      @api.request(route, options, callback)

    create: (params, callback) ->
      @api.client.logger.debug "Merchant::create called."
      route = '/merchants'
      options = 
        method: 'POST'
        body: params.data
      @api.request(route, options, callback)

    delete: (id, callback) ->
      @api.client.logger.debug "Merchant::delete called."
      route = "/merchants/#{id}"
      options = 
        method: 'DELETE'
      @api.request(route, options, callback)

    get: (id, callback) ->
      @api.client.logger.debug "Merchant::get called."
      route = "/merchants/#{id}"
      options = {}
      @api.request(route, options, callback)

    list: (callback) ->
      @api.client.logger.debug "Merchant::list called."
      route = '/merchants'
      options = {}
      @api.request(route, options, callback)

    update: (params, callback) ->
      @api.client.logger.debug "Merchant::update called."
      route = "/merchants/#{params.id}"
      options = 
        method: 'PATCH'
        body: params.data
      @api.request(route, options, callback)

module.exports = Admin