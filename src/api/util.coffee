util.coffee

# GoCoin Utilities Class
#
class Util
  constructor: (@api) ->

  #These requests do not require a login (token) and therefore use @client.raw_request
  request_password_reset: (params, callback) ->
    @api.client.logger.debug "User::request_password_reset called."
    route = "/users/request_password_reset"
    config =
      host: @api.client.options.host
      path: "#{@api.client.options.path}/#{@api.client.options.api_version}#{route}"
      method: 'POST'
      port: @api.client.port()
      headers: @api.client.headers
      body: JSON.stringify params.data

    @api.client.raw_request(config, callback)

  request_new_confirmation_email: (params, callback) ->
    @api.client.logger.debug "User::request_new_confirmation_email called."
    route = "/users/request_new_confirmation_email"
    config =
      host: @api.client.options.host
      path: "#{@api.client.options.path}/#{@api.client.options.api_version}#{route}"
      method: 'POST'
      port: @api.client.port()
      headers: @api.client.headers
      body: JSON.stringify params.data

    @api.client.raw_request(config, callback)

  reset_password_with_token: (params, callback) ->
    @api.client.logger.debug "User::reset_password_with_token called."
    route = "/users/#{params.id}/reset_password/#{params.reset_token}"
    config =
      host: @api.client.options.host
      path: "#{@api.client.options.path}/#{@api.client.options.api_version}#{route}"
      method: 'PATCH'
      port: @api.client.port()
      headers: @api.client.headers
      body: JSON.stringify params.data

    @api.client.raw_request(config, callback)

module.exports = Util