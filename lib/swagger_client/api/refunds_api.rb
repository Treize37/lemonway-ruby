=begin
#Lemonway DirectKit API 2.0

## Introduction    This service provides methods for automating the management of the accounts and operations.    __A strict control access on the IP is applied, make sure you have the rights before requesting the API.__    Please note that this version of the API is in pilot stage, and therefore may evolve in the future. Should you be interested in integrating this version, please contact your Lemon Way account manager or <a href=\"https://support.lemonway.com/hc/requests/new\" target=\"_blank\">the support team</a>.    # Authentication    The authentication service strictly follow the __chapter 4.4.2__ [Access Token request](https://tools.ietf.org/html/rfc6749#section-4.4.2) of the __RFC 6749__.    The unique method exposed by the api provides a unique bearer access associate a unique directkit. All dikectkit and environment have their own access.    The bearer allow an application to consume the api Rest Directkit    __This response has these scenarios:__  * In case the bearer do not exist, the method create a new bearer.  * In case the bearer already exist, it return the actual bearer with the remaining time left.  * In case the bearer lifetime is over, a new one is created, the old one is permanently deleted.  * In case of failure, a http statut code error with succinct information for security purpose.    # oauth2    __cURL example__:    ```  curl -X POST \"https://authentication.lemonway.com/v1/token\"      -H \"accept: application/json;charset=UTF-8\"      -H \"Authorization: Basic 375d7fd6-f1c3-41ed-82c6-c273fe384318\"      -H \"Content_Type: application/x-www-form-urlencoded\"      -d \"grant_type=client_credentials\"  ```    The OAuth2 documentation is available at this link [OAuth2 authentication](https://172.31.0.84:8082/oauth2-public/token/swagger).    Once you call the method, and if the informations provided are corrects, you will get a response with a bearer.    Use the provided bearer to request the directkit service    __Response example__:  ```  {      \"access_token\": \"4442659a-bebc-4afb-8fbd-21d19ae11972\", // unique bearer access      \"token_type\": \"Bearer\",      \"expires_in\": 3600 // secondes  }  ```    ___Note: Use the same method to renew your bearer once it got expired___    # Notifications    The __WHITE BRAND__ may want to receive notifications when __certain events are triggered__ (e.g. on payment account status change, on documentation status change...).  These notifications can be received by e-mail (HTML format) or be sent to an information system (webhooks / callbacks through HTTP POST or GET). For more information about notifications, please visit [the notifications documentation](https://documentation.lemonway.com/en/notifications).  To activate notifications, please log on the __WHITE BRAND back-office__ and go to the \"__Configuration/Notifications__\" menu.

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module SwaggerClient
  class RefundsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Refund a money-in
    # The general rules are:  <ul><li>The refund can only be performed on the card or bank account that did the initial payment</li><li>Lemon Way keeps the payment fee</li><li>If no amount is specified, the total amount of the payment is refunded</li><li>The payment account of the CLIENT on which the initial payment was done is debited of the refund amount.If there is not enough money on the CLIENT wallet,  the missing amount of money to refund will be debited from your \"SC\" Wallet.In this case a ON-US payment is automatically performed from your \"SC\" payment account to the CLIENT Wallet, prior to refund the card.</li><li>With version 1.1, it is possible to cumulate refunds and ask many refunds until the total amount of the payment is refunded.</li></ul>  Regarding card payments :  <ul><li>RefundMoneyIn for a card payment with Atos is not available from 10PM to 3AM PARIS Time.</li><li>Refund is only available/possible for 12 months after the initial payment</li><li>Please be aware of controls performed by Visa and Mastercard on the percentage of refunds.Refunds should never be greater that 10%. If you think you will have more than 10% of refunds, please contact us and our management will find a solution for you.The solution may be to refund using a fund transfer on the IBAN of the owner, not on his card.</li></ul>  Regarding SOFORT : refund is only available for 3 months after the initial payment <br />  Regarding IDEAL: refund is only available for 99 days after the initial payment <br />
    # @param transactionid 
    # @param parameters 
    # @param authorization Authorization bearer (OAuth 2)
    # @param psu_ip_address IP address of the final client (PSU).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
    # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
    # @return [RefundMoneyInOutput]
    def refunds_refund_put(transactionid, parameters, authorization, psu_ip_address, opts = {})
      data, _status_code, _headers = refunds_refund_put_with_http_info(transactionid, parameters, authorization, psu_ip_address, opts)
      data
    end

    # Refund a money-in
    # The general rules are:  &lt;ul&gt;&lt;li&gt;The refund can only be performed on the card or bank account that did the initial payment&lt;/li&gt;&lt;li&gt;Lemon Way keeps the payment fee&lt;/li&gt;&lt;li&gt;If no amount is specified, the total amount of the payment is refunded&lt;/li&gt;&lt;li&gt;The payment account of the CLIENT on which the initial payment was done is debited of the refund amount.If there is not enough money on the CLIENT wallet,  the missing amount of money to refund will be debited from your \&quot;SC\&quot; Wallet.In this case a ON-US payment is automatically performed from your \&quot;SC\&quot; payment account to the CLIENT Wallet, prior to refund the card.&lt;/li&gt;&lt;li&gt;With version 1.1, it is possible to cumulate refunds and ask many refunds until the total amount of the payment is refunded.&lt;/li&gt;&lt;/ul&gt;  Regarding card payments :  &lt;ul&gt;&lt;li&gt;RefundMoneyIn for a card payment with Atos is not available from 10PM to 3AM PARIS Time.&lt;/li&gt;&lt;li&gt;Refund is only available/possible for 12 months after the initial payment&lt;/li&gt;&lt;li&gt;Please be aware of controls performed by Visa and Mastercard on the percentage of refunds.Refunds should never be greater that 10%. If you think you will have more than 10% of refunds, please contact us and our management will find a solution for you.The solution may be to refund using a fund transfer on the IBAN of the owner, not on his card.&lt;/li&gt;&lt;/ul&gt;  Regarding SOFORT : refund is only available for 3 months after the initial payment &lt;br /&gt;  Regarding IDEAL: refund is only available for 99 days after the initial payment &lt;br /&gt;
    # @param transactionid 
    # @param parameters 
    # @param authorization Authorization bearer (OAuth 2)
    # @param psu_ip_address IP address of the final client (PSU).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
    # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
    # @return [Array<(RefundMoneyInOutput, Fixnum, Hash)>] RefundMoneyInOutput data, response status code and response headers
    def refunds_refund_put_with_http_info(transactionid, parameters, authorization, psu_ip_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RefundsApi.refunds_refund_put ...'
      end
      # verify the required parameter 'transactionid' is set
      if @api_client.config.client_side_validation && transactionid.nil?
        fail ArgumentError, "Missing the required parameter 'transactionid' when calling RefundsApi.refunds_refund_put"
      end
      # verify the required parameter 'parameters' is set
      if @api_client.config.client_side_validation && parameters.nil?
        fail ArgumentError, "Missing the required parameter 'parameters' when calling RefundsApi.refunds_refund_put"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling RefundsApi.refunds_refund_put"
      end
      # verify the required parameter 'psu_ip_address' is set
      if @api_client.config.client_side_validation && psu_ip_address.nil?
        fail ArgumentError, "Missing the required parameter 'psu_ip_address' when calling RefundsApi.refunds_refund_put"
      end
      # resource path
      local_var_path = '/v2/refund/{transactionid}'.sub('{' + 'transactionid' + '}', transactionid.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RefundMoneyInOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundsApi#refunds_refund_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
