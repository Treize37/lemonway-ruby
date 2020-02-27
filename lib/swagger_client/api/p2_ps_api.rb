=begin
#Lemonway DirectKit API 2.0

## Introduction    This service provides methods for automating the management of the accounts and operations.    __A strict control access on the IP is applied, make sure you have the rights before requesting the API.__    Please note that this version of the API is in pilot stage, and therefore may evolve in the future. Should you be interested in integrating this version, please contact your Lemon Way account manager or <a href=\"https://support.lemonway.com/hc/requests/new\" target=\"_blank\">the support team</a>.    # Authentication    The authentication service strictly follow the __chapter 4.4.2__ [Access Token request](https://tools.ietf.org/html/rfc6749#section-4.4.2) of the __RFC 6749__.    The unique method exposed by the api provides a unique bearer access associate a unique directkit. All dikectkit and environment have their own access.    The bearer allow an application to consume the api Rest Directkit    __This response has these scenarios:__  * In case the bearer do not exist, the method create a new bearer.  * In case the bearer already exist, it return the actual bearer with the remaining time left.  * In case the bearer lifetime is over, a new one is created, the old one is permanently deleted.  * In case of failure, a http statut code error with succinct information for security purpose.    # oauth2    __cURL example__:    ```  curl -X POST \"https://authentication.lemonway.com/v1/token\"      -H \"accept: application/json;charset=UTF-8\"      -H \"Authorization: Basic 375d7fd6-f1c3-41ed-82c6-c273fe384318\"      -H \"Content_Type: application/x-www-form-urlencoded\"      -d \"grant_type=client_credentials\"  ```    The OAuth2 documentation is available at this link [OAuth2 authentication](https://172.31.0.84:8082/oauth2-public/token/swagger).    Once you call the method, and if the informations provided are corrects, you will get a response with a bearer.    Use the provided bearer to request the directkit service    __Response example__:  ```  {      \"access_token\": \"4442659a-bebc-4afb-8fbd-21d19ae11972\", // unique bearer access      \"token_type\": \"Bearer\",      \"expires_in\": 3600 // secondes  }  ```    ___Note: Use the same method to renew your bearer once it got expired___    # Notifications    The __WHITE BRAND__ may want to receive notifications when __certain events are triggered__ (e.g. on payment account status change, on documentation status change...).  These notifications can be received by e-mail (HTML format) or be sent to an information system (webhooks / callbacks through HTTP POST or GET). For more information about notifications, please visit [the notifications documentation](https://documentation.lemonway.com/en/notifications).  To activate notifications, please log on the __WHITE BRAND back-office__ and go to the \"__Configuration/Notifications__\" menu.

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module SwaggerClient
  class P2PsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # looking for payments between payments accounts
    # Returns a lit of payments (between payments accounts ) that match the search fields.
    # @param transactionid 
    # @param authorization Authorization bearer (OAuth 2)
    # @param psu_ip_address IP address of the final client (PSU).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :transaction_id Transaction ID.
    # @option opts [String] :transaction_comment Transaction comment.
    # @option opts [Array<String>] :private_data_value Up to 20 fields of 256 maximum length
    # @option opts [Integer] :page index start from 1, let null to get all
    # @option opts [Integer] :limit default 20, let it null if no pagination
    # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
    # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
    # @return [GetPaymentDetailsOutput]
    def p2_ps_p2p_get(transactionid, authorization, psu_ip_address, opts = {})
      data, _status_code, _headers = p2_ps_p2p_get_with_http_info(transactionid, authorization, psu_ip_address, opts)
      data
    end

    # looking for payments between payments accounts
    # Returns a lit of payments (between payments accounts ) that match the search fields.
    # @param transactionid 
    # @param authorization Authorization bearer (OAuth 2)
    # @param psu_ip_address IP address of the final client (PSU).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :transaction_id Transaction ID.
    # @option opts [String] :transaction_comment Transaction comment.
    # @option opts [Array<String>] :private_data_value Up to 20 fields of 256 maximum length
    # @option opts [Integer] :page index start from 1, let null to get all
    # @option opts [Integer] :limit default 20, let it null if no pagination
    # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
    # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
    # @return [Array<(GetPaymentDetailsOutput, Fixnum, Hash)>] GetPaymentDetailsOutput data, response status code and response headers
    def p2_ps_p2p_get_with_http_info(transactionid, authorization, psu_ip_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: P2PsApi.p2_ps_p2p_get ...'
      end
      # verify the required parameter 'transactionid' is set
      if @api_client.config.client_side_validation && transactionid.nil?
        fail ArgumentError, "Missing the required parameter 'transactionid' when calling P2PsApi.p2_ps_p2p_get"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling P2PsApi.p2_ps_p2p_get"
      end
      # verify the required parameter 'psu_ip_address' is set
      if @api_client.config.client_side_validation && psu_ip_address.nil?
        fail ArgumentError, "Missing the required parameter 'psu_ip_address' when calling P2PsApi.p2_ps_p2p_get"
      end
      if @api_client.config.client_side_validation && !opts[:'transaction_comment'].nil? && opts[:'transaction_comment'].to_s.length > 140
        fail ArgumentError, 'invalid value for "opts[:"transaction_comment"]" when calling P2PsApi.p2_ps_p2p_get, the character length must be smaller than or equal to 140.'
      end

      if @api_client.config.client_side_validation && !opts[:'transaction_comment'].nil? && opts[:'transaction_comment'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"transaction_comment"]" when calling P2PsApi.p2_ps_p2p_get, the character length must be great than or equal to 0.'
      end

      # resource path
      local_var_path = '/v2/p2p/{transactionid}'.sub('{' + 'transactionid' + '}', transactionid.to_s)

      # query parameters
      query_params = {}
      query_params[:'transactionId'] = opts[:'transaction_id'] if !opts[:'transaction_id'].nil?
      query_params[:'transactionComment'] = opts[:'transaction_comment'] if !opts[:'transaction_comment'].nil?
      query_params[:'privateData.value'] = @api_client.build_collection_param(opts[:'private_data_value'], :multi) if !opts[:'private_data_value'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'PSU-IP-Address'] = psu_ip_address
      header_params[:'PSU-Accept-Language'] = opts[:'psu_accept_language'] if !opts[:'psu_accept_language'].nil?
      header_params[:'PSU-User-Agent'] = opts[:'psu_user_agent'] if !opts[:'psu_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetPaymentDetailsOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: P2PsApi#p2_ps_p2p_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # On-Us payment between payments accounts
    # This function debits a wallet A and credits a wallet B. payments accounts  are internal to Lemon Way, that's the reason we call those operations \"On Us\" operations. You can delay this payment of X days.
    # @param parameters 
    # @param authorization Authorization bearer (OAuth 2)
    # @param psu_ip_address IP address of the final client (PSU).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
    # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
    # @return [SendPaymentOutput]
    def p2_ps_p2p_post(parameters, authorization, psu_ip_address, opts = {})
      data, _status_code, _headers = p2_ps_p2p_post_with_http_info(parameters, authorization, psu_ip_address, opts)
      data
    end

    # On-Us payment between payments accounts
    # This function debits a wallet A and credits a wallet B. payments accounts  are internal to Lemon Way, that&#39;s the reason we call those operations \&quot;On Us\&quot; operations. You can delay this payment of X days.
    # @param parameters 
    # @param authorization Authorization bearer (OAuth 2)
    # @param psu_ip_address IP address of the final client (PSU).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
    # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
    # @return [Array<(SendPaymentOutput, Fixnum, Hash)>] SendPaymentOutput data, response status code and response headers
    def p2_ps_p2p_post_with_http_info(parameters, authorization, psu_ip_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: P2PsApi.p2_ps_p2p_post ...'
      end
      # verify the required parameter 'parameters' is set
      if @api_client.config.client_side_validation && parameters.nil?
        fail ArgumentError, "Missing the required parameter 'parameters' when calling P2PsApi.p2_ps_p2p_post"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling P2PsApi.p2_ps_p2p_post"
      end
      # verify the required parameter 'psu_ip_address' is set
      if @api_client.config.client_side_validation && psu_ip_address.nil?
        fail ArgumentError, "Missing the required parameter 'psu_ip_address' when calling P2PsApi.p2_ps_p2p_post"
      end
      # resource path
      local_var_path = '/v2/p2p'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'PSU-IP-Address'] = psu_ip_address
      header_params[:'PSU-Accept-Language'] = opts[:'psu_accept_language'] if !opts[:'psu_accept_language'].nil?
      header_params[:'PSU-User-Agent'] = opts[:'psu_user_agent'] if !opts[:'psu_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(parameters)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SendPaymentOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: P2PsApi#p2_ps_p2p_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
