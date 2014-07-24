# GoCoin Third Party Applications
#
class Apps

  constructor: (@api) ->

  create: (params, callback) ->
    @api.client.logger.debug "Apps::create called."
    route = '/oauth/applications'
    options = 
      method: 'POST'
      body: params
    @api.request(route, options, callback)

  authorizationCode: (params, callback) ->
    @api.client.logger.debug "Apps::authorizationCode called."
    route = '/oauth/authorize'
    options =
      method: 'POST'
      body: params
    @api.request(route, options, callback)

  delete: (id, callback) ->
    @api.client.logger.debug "Apps::delete called."
    route = "/oauth/applications/#{id}"
    options = 
      method: 'DELETE'
    @api.request(route, options, callback)

  deleteAuthorized: (id, callback) ->
    @api.client.logger.debug "Apps::deleteAuthorized called."
    route = "/oauth/authorized_applications/#{id}"
    options = 
      method: 'DELETE'
    @api.request(route, options, callback)

  get: (id, callback) ->
    @api.client.logger.debug "Apps::get called."
    route = "/oauth/applications/#{id}"
    options = {}
    @api.request(route, options, callback)

  list: (id, callback) ->
    @api.client.logger.debug "Apps::list called."
    route = "/users/#{id}/applications";
    options = {}
    @api.request(route, options, callback)

  listAuthorized: (id, callback) ->
    @api.client.logger.debug "Apps::listAuthorized called."
    route = "/users/#{id}/authorized_applications";
    options = {}
    @api.request(route, options, callback)

  update: (params, callback) ->
    @api.client.logger.debug "Apps::update called."
    route = "/oauth/applications/#{params.id}"
    options = 
      method: 'PATCH'
      body: params.data
    @api.request(route, options, callback)

  newSecret: (id, callback) ->
    @api.client.logger.debug "Apps::newSecret called."
    route = "/oauth/applications/#{id}/request_new_secret"
    options = 
      method: 'POST'
    @api.request(route, options, callback)

  #does not require an access token, uses raw_request to bypass
  getByClientID: (id, callback) ->
    @api.client.logger.debug "Apps::getByClientID called."
    route = "/oauth/applications/uid/#{id}"
    config =
      host: @api.client.options.host
      path: "#{@api.client.options.path}/#{@api.client.options.api_version}#{route}"
      method: 'GET'
      port: @api.client.port()
      headers: @api.client.headers

    @api.client.raw_request(config, callback)

module.exports = Apps
