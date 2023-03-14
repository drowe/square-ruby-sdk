module Square
  # SubscriptionsApi
  class SubscriptionsApi < BaseApi
    # Creates a subscription to a subscription plan by a customer.
    # If you provide a card on file in the request, Square charges the card for
    # the subscription. Otherwise, Square bills an invoice to the customer's
    # email
    # address. The subscription starts immediately, unless the request includes
    # the optional `start_date`. Each individual subscription is associated with
    # a particular location.
    # @param [CreateSubscriptionRequest] body Required parameter: An object
    # containing the fields to POST for the request.  See the corresponding
    # object definition for field details.
    # @return [CreateSubscriptionResponse Hash] response from the API call
    def create_subscription(body:)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v2/subscriptions',
                                     'default')
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end

    # Searches for subscriptions.
    # Results are ordered chronologically by subscription creation date. If
    # the request specifies more than one location ID,
    # the endpoint orders the result
    # by location ID, and then by creation date within each location. If no
    # locations are given
    # in the query, all locations are searched.
    # You can also optionally specify `customer_ids` to search by customer.
    # If left unset, all customers
    # associated with the specified locations are returned.
    # If the request specifies customer IDs, the endpoint orders results
    # first by location, within location by customer ID, and within
    # customer by subscription creation date.
    # For more information, see
    # [Retrieve
    # subscriptions](https://developer.squareup.com/docs/subscriptions-api/overv
    # iew#retrieve-subscriptions).
    # @param [SearchSubscriptionsRequest] body Required parameter: An object
    # containing the fields to POST for the request.  See the corresponding
    # object definition for field details.
    # @return [SearchSubscriptionsResponse Hash] response from the API call
    def search_subscriptions(body:)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v2/subscriptions/search',
                                     'default')
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end

    # Retrieves a subscription.
    # @param [String] subscription_id Required parameter: The ID of the
    # subscription to retrieve.
    # @param [String] include Optional parameter: A query parameter to specify
    # related information to be included in the response.   The supported query
    # parameter values are:   - `actions`: to include scheduled actions on the
    # targeted subscription.
    # @return [RetrieveSubscriptionResponse Hash] response from the API call
    def retrieve_subscription(subscription_id:,
                              include: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v2/subscriptions/{subscription_id}',
                                     'default')
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .should_encode(true))
                   .query_param(new_parameter(include, key: 'include'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end

    # Updates a subscription. You can set, modify, and clear the
    # `subscription` field values.
    # @param [String] subscription_id Required parameter: The ID of the
    # subscription to update.
    # @param [UpdateSubscriptionRequest] body Required parameter: An object
    # containing the fields to POST for the request.  See the corresponding
    # object definition for field details.
    # @return [UpdateSubscriptionResponse Hash] response from the API call
    def update_subscription(subscription_id:,
                            body:)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/v2/subscriptions/{subscription_id}',
                                     'default')
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end

    # Deletes a scheduled action for a subscription.
    # @param [String] subscription_id Required parameter: The ID of the
    # subscription the targeted action is to act upon.
    # @param [String] action_id Required parameter: The ID of the targeted
    # action to be deleted.
    # @return [DeleteSubscriptionActionResponse Hash] response from the API call
    def delete_subscription_action(subscription_id:,
                                   action_id:)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/v2/subscriptions/{subscription_id}/actions/{action_id}',
                                     'default')
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .should_encode(true))
                   .template_param(new_parameter(action_id, key: 'action_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end

    # Schedules a `CANCEL` action to cancel an active subscription
    # by setting the `canceled_date` field to the end of the active billing
    # period
    # and changing the subscription status from ACTIVE to CANCELED after this
    # date.
    # @param [String] subscription_id Required parameter: The ID of the
    # subscription to cancel.
    # @return [CancelSubscriptionResponse Hash] response from the API call
    def cancel_subscription(subscription_id:)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v2/subscriptions/{subscription_id}/cancel',
                                     'default')
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end

    # Lists all events for a specific subscription.
    # @param [String] subscription_id Required parameter: The ID of the
    # subscription to retrieve the events for.
    # @param [String] cursor Optional parameter: When the total number of
    # resulting subscription events exceeds the limit of a paged response,
    # specify the cursor returned from a preceding response here to fetch the
    # next set of results. If the cursor is unset, the response contains the
    # last page of the results.  For more information, see
    # [Pagination](https://developer.squareup.com/docs/working-with-apis/paginat
    # ion).
    # @param [Integer] limit Optional parameter: The upper limit on the number
    # of subscription events to return in a paged response.
    # @return [ListSubscriptionEventsResponse Hash] response from the API call
    def list_subscription_events(subscription_id:,
                                 cursor: nil,
                                 limit: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v2/subscriptions/{subscription_id}/events',
                                     'default')
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .should_encode(true))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end

    # Schedules a `PAUSE` action to pause an active subscription.
    # @param [String] subscription_id Required parameter: The ID of the
    # subscription to pause.
    # @param [PauseSubscriptionRequest] body Required parameter: An object
    # containing the fields to POST for the request.  See the corresponding
    # object definition for field details.
    # @return [PauseSubscriptionResponse Hash] response from the API call
    def pause_subscription(subscription_id:,
                           body:)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v2/subscriptions/{subscription_id}/pause',
                                     'default')
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end

    # Schedules a `RESUME` action to resume a paused or a deactivated
    # subscription.
    # @param [String] subscription_id Required parameter: The ID of the
    # subscription to resume.
    # @param [ResumeSubscriptionRequest] body Required parameter: An object
    # containing the fields to POST for the request.  See the corresponding
    # object definition for field details.
    # @return [ResumeSubscriptionResponse Hash] response from the API call
    def resume_subscription(subscription_id:,
                            body:)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v2/subscriptions/{subscription_id}/resume',
                                     'default')
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end

    # Schedules a `SWAP_PLAN` action to swap a subscription plan in an existing
    # subscription.
    # @param [String] subscription_id Required parameter: The ID of the
    # subscription to swap the subscription plan for.
    # @param [SwapPlanRequest] body Required parameter: An object containing the
    # fields to POST for the request.  See the corresponding object definition
    # for field details.
    # @return [SwapPlanResponse Hash] response from the API call
    def swap_plan(subscription_id:,
                  body:)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v2/subscriptions/{subscription_id}/swap-plan',
                                     'default')
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:json_deserialize))
                   .is_api_response(true)
                   .convertor(ApiResponse.method(:create)))
        .execute
    end
  end
end
