module Square
  # OAuthApi
  class OAuthApi < BaseApi
    # `RenewToken` is deprecated. For information about refreshing OAuth access
    # tokens, see
    # [Migrate from Renew to Refresh OAuth
    # Tokens](https://developer.squareup.com/docs/oauth-api/migrate-to-refresh-t
    # okens).
    # Renews an OAuth access token before it expires.
    # OAuth access tokens besides your application's personal access token
    # expire after 30 days.
    # You can also renew expired tokens within 15 days of their expiration.
    # You cannot renew an access token that has been expired for more than 15
    # days.
    # Instead, the associated user must recomplete the OAuth flow from the
    # beginning.
    # __Important:__ The `Authorization` header for this endpoint must have the
    # following format:
    # ```
    # Authorization: Client APPLICATION_SECRET
    # ```
    # Replace `APPLICATION_SECRET` with the application secret on the
    # **Credentials**
    # page in the [Developer Dashboard](https://developer.squareup.com/apps).
    # @param [String] client_id Required parameter: Your application ID, which
    # is available on the **OAuth** page in the [Developer
    # Dashboard](https://developer.squareup.com/apps).
    # @param [RenewTokenRequest] body Required parameter: An object containing
    # the fields to POST for the request.  See the corresponding object
    # definition for field details.
    # @param [String] authorization Required parameter: Client
    # APPLICATION_SECRET
    # @return [RenewTokenResponse Hash] response from the API call
    def renew_token(client_id:,
                    body:,
                    authorization:)
      warn 'Endpoint renew_token in OAuthApi is deprecated'
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/oauth2/clients/{client_id}/access-token/renew',
                                     'default')
                   .template_param(new_parameter(client_id, key: 'client_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter(authorization, key: 'Authorization'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end

    # Revokes an access token generated with the OAuth flow.
    # If an account has more than one OAuth access token for your application,
    # this
    # endpoint revokes all of them, regardless of which token you specify. When
    # an
    # OAuth access token is revoked, all of the active subscriptions associated
    # with that OAuth token are canceled immediately.
    # __Important:__ The `Authorization` header for this endpoint must have the
    # following format:
    # ```
    # Authorization: Client APPLICATION_SECRET
    # ```
    # Replace `APPLICATION_SECRET` with the application secret on the **OAuth**
    # page for your application in the Developer Dashboard.
    # @param [RevokeTokenRequest] body Required parameter: An object containing
    # the fields to POST for the request.  See the corresponding object
    # definition for field details.
    # @param [String] authorization Required parameter: Client
    # APPLICATION_SECRET
    # @return [RevokeTokenResponse Hash] response from the API call
    def revoke_token(body:,
                     authorization:)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/oauth2/revoke',
                                     'default')
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter(authorization, key: 'Authorization'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end

    # Returns an OAuth access token and a refresh token unless the
    # `short_lived` parameter is set to `true`, in which case the endpoint
    # returns only an access token.
    # The `grant_type` parameter specifies the type of OAuth request. If
    # `grant_type` is `authorization_code`, you must include the authorization
    # code you received when a seller granted you authorization. If `grant_type`
    # is `refresh_token`, you must provide a valid refresh token. If you're
    # using
    # an old version of the Square APIs (prior to March 13, 2019), `grant_type`
    # can be `migration_token` and you must provide a valid migration token.
    # You can use the `scopes` parameter to limit the set of permissions granted
    # to the access token and refresh token. You can use the `short_lived`
    # parameter
    # to create an access token that expires in 24 hours.
    # __Note:__ OAuth tokens should be encrypted and stored on a secure server.
    # Application clients should never interact directly with OAuth tokens.
    # @param [ObtainTokenRequest] body Required parameter: An object containing
    # the fields to POST for the request.  See the corresponding object
    # definition for field details.
    # @return [ObtainTokenResponse Hash] response from the API call
    def obtain_token(body:)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/oauth2/token',
                                     'default')
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end

    # Returns information about an [OAuth access
    # token](https://developer.squareup.com/docs/build-basics/access-tokens#get-
    # an-oauth-access-token) or an application’s [personal access
    # token](https://developer.squareup.com/docs/build-basics/access-tokens#get-
    # a-personal-access-token).
    # Add the access token to the Authorization header of the request.
    # __Important:__ The `Authorization` header you provide to this endpoint
    # must have the following format:
    # ```
    # Authorization: Bearer ACCESS_TOKEN
    # ```
    # where `ACCESS_TOKEN` is a
    # [valid production authorization
    # credential](https://developer.squareup.com/docs/build-basics/access-tokens
    # ).
    # If the access token is expired or not a valid access token, the endpoint
    # returns an `UNAUTHORIZED` error.
    # @param [String] authorization Required parameter: Client
    # APPLICATION_SECRET
    # @return [RetrieveTokenStatusResponse Hash] response from the API call
    def retrieve_token_status(authorization:)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/oauth2/token/status',
                                     'default')
                   .header_param(new_parameter(authorization, key: 'Authorization'))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end
  end
end
