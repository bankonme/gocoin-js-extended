# GoCoin Admin Class
#
querystring = require 'querystring'

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

  listChildMerchants: (params, callback) ->
    @api.client.logger.debug "Merchant::list called."
    query = querystring.stringify params.data
    route = "/merchants/#{params.id}/children?#{query}"
    options = {}
    @api.request(route, options, callback)

  getMerchantTerms: (id, callback) ->
    @api.client.logger.debug "Merchant::list called."
    route = "/merchants/#{id}/terms_of_service"
    options = {}
    @api.request(route, options, callback)

  acceptMerchantTerms: (params, callback) ->
    @api.client.logger.debug "MerchantTerms::get called."
    route = "/merchants/#{params.id}/accept_terms_of_service"
    options = 
      method: 'PUT'
      body: params.data
    @api.request(route, options, callback)

  getMerchantUsers: (id, callback) ->
    @api.client.logger.debug "MerchantUsers::get called."
    route = "/merchants/#{id}/users"
    options = {}
    @api.request(route, options, callback)

  addMerchantUser: (params, callback) ->
    @api.client.logger.debug "MerchantUsers::put called."
    route = "/merchants/#{params.merchant_id}/users"
    options =
      method: 'POST'
      body: params.data
    @api.request(route, options, callback)

  deleteMerchantUser: (params, callback) ->
    @api.client.logger.debug "MerchantUsers::delete called."
    route = "/merchants/#{params.merchant_id}/users/#{params.user_id}"
    options = 
      method: 'DELETE'
    @api.request(route, options, callback)

  getKycDocs: (id, callback) ->
    @api.client.logger.debug "KycDocs::list called."
    route = "/merchants/#{id}/kyc_documents"
    options = {}
    @api.request(route, options, callback)

  getMerchantOnboardingStatus: (id, callback) ->
    @api.client.logger.debug "Merchant::getOnboardingStatus called."
    route = "/merchants/#{id}/onboarding_status"
    options = {}
    @api.request(route, options, callback)

module.exports = Admin