# SwaggerClient::RefundsApi

All URIs are relative to *https://localhost/webservice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**refunds_refund_put**](RefundsApi.md#refunds_refund_put) | **PUT** /v2/refund/{transactionid} | Refund a money-in


# **refunds_refund_put**
> RefundMoneyInOutput refunds_refund_put(transactionid, parameters, authorization, psu_ip_address, opts)

Refund a money-in

The general rules are:  <ul><li>The refund can only be performed on the card or bank account that did the initial payment</li><li>Lemon Way keeps the payment fee</li><li>If no amount is specified, the total amount of the payment is refunded</li><li>The payment account of the CLIENT on which the initial payment was done is debited of the refund amount.If there is not enough money on the CLIENT wallet,  the missing amount of money to refund will be debited from your \"SC\" Wallet.In this case a ON-US payment is automatically performed from your \"SC\" payment account to the CLIENT Wallet, prior to refund the card.</li><li>With version 1.1, it is possible to cumulate refunds and ask many refunds until the total amount of the payment is refunded.</li></ul>  Regarding card payments :  <ul><li>RefundMoneyIn for a card payment with Atos is not available from 10PM to 3AM PARIS Time.</li><li>Refund is only available/possible for 12 months after the initial payment</li><li>Please be aware of controls performed by Visa and Mastercard on the percentage of refunds.Refunds should never be greater that 10%. If you think you will have more than 10% of refunds, please contact us and our management will find a solution for you.The solution may be to refund using a fund transfer on the IBAN of the owner, not on his card.</li></ul>  Regarding SOFORT : refund is only available for 3 months after the initial payment <br />  Regarding IDEAL: refund is only available for 99 days after the initial payment <br />

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RefundsApi.new

transactionid = 789 # Integer | 

parameters = SwaggerClient::RefundMoneyInInput.new # RefundMoneyInInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Refund a money-in
  result = api_instance.refunds_refund_put(transactionid, parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RefundsApi->refunds_refund_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionid** | **Integer**|  | 
 **parameters** | [**RefundMoneyInInput**](RefundMoneyInInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**RefundMoneyInOutput**](RefundMoneyInOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



