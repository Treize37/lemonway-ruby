# SwaggerClient::MoneyOutsApi

All URIs are relative to *https://localhost/webservice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**money_outs_cancel_put**](MoneyOutsApi.md#money_outs_cancel_put) | **PUT** /v2/moneyouts/{transactionid}/cancel | Cancellation of a Money-Out
[**money_outs_iban_extended_post**](MoneyOutsApi.md#money_outs_iban_extended_post) | **POST** /v2/moneyouts/iban/extended | Link a non-SEPA IBAN to a payment account
[**money_outs_iban_get**](MoneyOutsApi.md#money_outs_iban_get) | **GET** /v2/moneyouts/{accountid}/iban | Get the iban(s) associate to a payment account
[**money_outs_iban_post**](MoneyOutsApi.md#money_outs_iban_post) | **POST** /v2/moneyouts/iban | Link an IBAN (SEPA area) to a payment account
[**money_outs_iban_unregister_put**](MoneyOutsApi.md#money_outs_iban_unregister_put) | **PUT** /v2/moneyouts/iban/{IbanId}/unregister | Link a non-SEPA IBAN to a payment account
[**money_outs_money_out_get**](MoneyOutsApi.md#money_outs_money_out_get) | **GET** /v2/moneyouts | looking for a money-out
[**money_outs_money_out_post**](MoneyOutsApi.md#money_outs_money_out_post) | **POST** /v2/moneyouts | External fund transfer from a payment account to a bank account


# **money_outs_cancel_put**
> CancelMoneyOutOutput money_outs_cancel_put(transactionid, parameters, authorization, psu_ip_address, opts)

Cancellation of a Money-Out

With the \"Cancel method, the WHITE BRAND can cancel a MoneyOut / SDD.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyOutsApi.new

transactionid = 789 # Integer | 

parameters = SwaggerClient::CancelMoneyOutInput.new # CancelMoneyOutInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Cancellation of a Money-Out
  result = api_instance.money_outs_cancel_put(transactionid, parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyOutsApi->money_outs_cancel_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionid** | **Integer**|  | 
 **parameters** | [**CancelMoneyOutInput**](CancelMoneyOutInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**CancelMoneyOutOutput**](CancelMoneyOutOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_outs_iban_extended_post**
> RegisterIBANExtendedOutput money_outs_iban_extended_post(parameters, authorization, psu_ip_address, opts)

Link a non-SEPA IBAN to a payment account

With \"RegisterIBANExtended\" method, our system links an IBAN outside of the geographical SEPA area to a Payment Account. A payment account can live without an IBAN. An IBAN is needed to do a MONEY-OUT. No IBAN is needed to perform a payment account to payment account payment. No IBAN is needed to make a MONEY-IN on a Payment Account.  <ul><li>Please only use this for IBANs outside of the geographical SEPA area.</li><li>Depending on your business, the IBAN will be automatically active or not, after you have called this functionality.If it is not automatically active, our control team will have to validate it before you can use it for a money-out.</li><li>By default, you can only register one IBAN per payment account, when you link a new IBAN all previous IBANs linked to the same payment account will be automatically deactivated.If you wish to link several IBANs to one payment account please contact us for approval.</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyOutsApi.new

parameters = SwaggerClient::RegisterIBANExtendedInput.new # RegisterIBANExtendedInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Link a non-SEPA IBAN to a payment account
  result = api_instance.money_outs_iban_extended_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyOutsApi->money_outs_iban_extended_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**RegisterIBANExtendedInput**](RegisterIBANExtendedInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**RegisterIBANExtendedOutput**](RegisterIBANExtendedOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_outs_iban_get**
> AccountIbansOutput money_outs_iban_get(accountid, authorization, psu_ip_address, opts)

Get the iban(s) associate to a payment account

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyOutsApi.new

accountid = 'accountid_example' # String | Account ID

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Get the iban(s) associate to a payment account
  result = api_instance.money_outs_iban_get(accountid, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyOutsApi->money_outs_iban_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **String**| Account ID | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**AccountIbansOutput**](AccountIbansOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_outs_iban_post**
> RegisterIBANOutput money_outs_iban_post(parameters, authorization, psu_ip_address, opts)

Link an IBAN (SEPA area) to a payment account

With \"RegisterIBAN\" method, our system links an IBAN to a Payment Account. A Payment Account can live without an IBAN. An IBAN is needed to do a MONEY-OUT.  No IBAN is needed to perform an ON-US payment. No IBAN is needed to make a MONEY-IN on a Payment Account.  <ul><li>Please use this for IBANs on the geographical SEPA zone only.</li><li>Depending on your business, the IBAN will be automatically active or not,   after you have called this functionality.If it is not automatically active, our control team will have to validate it before you can use it for a money-out.</li><li>By default, you can only register one IBAN per payment account, when you   link a new IBAN all previous IBANs linked to the same payment account will be automatically deactivated.If you wish to link several IBANs to one payment account please contact us for approval.</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyOutsApi.new

parameters = SwaggerClient::RegisterIBANInput.new # RegisterIBANInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Link an IBAN (SEPA area) to a payment account
  result = api_instance.money_outs_iban_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyOutsApi->money_outs_iban_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**RegisterIBANInput**](RegisterIBANInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**RegisterIBANOutput**](RegisterIBANOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_outs_iban_unregister_put**
> UnregisterIBANOutput money_outs_iban_unregister_put(iban_id, parameters, authorization, psu_ip_address, opts)

Link a non-SEPA IBAN to a payment account

With \"UnregisterIBAN\" method, our system disable an IBAN from a Payment Account.A Payment Account can live without an IBAN.An IBAN is needed to do a MONEY-OUT.No IBAN is needed to perform an ON-US payment. No IBAN is needed to make a MONEY-IN on a Payment Account.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyOutsApi.new

iban_id = 789 # Integer | 

parameters = SwaggerClient::UnregisterIBANInput.new # UnregisterIBANInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Link a non-SEPA IBAN to a payment account
  result = api_instance.money_outs_iban_unregister_put(iban_id, parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyOutsApi->money_outs_iban_unregister_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iban_id** | **Integer**|  | 
 **parameters** | [**UnregisterIBANInput**](UnregisterIBANInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**UnregisterIBANOutput**](UnregisterIBANOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json



# **money_outs_money_out_get**
> GetMoneyOutTransDetailsOutput money_outs_money_out_get(authorization, psu_ip_address, opts)

looking for a money-out

Use this method to get and check all MONEY-OUT information.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyOutsApi.new

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  transactionid: 789, # Integer | MONEY-OUT ID.
  transaction_comment: 'transaction_comment_example', # String | MONEY-OUT Comment.
  page: 56, # Integer | index start from 1, let null to get all
  limit: 56, # Integer | default 20, let it null if no pagination
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #looking for a money-out
  result = api_instance.money_outs_money_out_get(authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyOutsApi->money_outs_money_out_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **transactionid** | **Integer**| MONEY-OUT ID. | [optional] 
 **transaction_comment** | **String**| MONEY-OUT Comment. | [optional] 
 **page** | **Integer**| index start from 1, let null to get all | [optional] 
 **limit** | **Integer**| default 20, let it null if no pagination | [optional] 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**GetMoneyOutTransDetailsOutput**](GetMoneyOutTransDetailsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_outs_money_out_post**
> MoneyOutOutput money_outs_money_out_post(parameters, authorization, psu_ip_address, opts)

External fund transfer from a payment account to a bank account

How it works  Choose an IBAN if multiple IBAN exist for the Wallet.Choose an amount, not greater than the balance of the wallet. Call \"MoneyOut\", and the system performs the fund transfer to the IBAN if everything is clear, or returns an error message.  <ul><li>The payment account is debited immediately and the money is then received by the owner, on their bank account after 1 to 3 days, depending on the interbanking system and on the banks (SEPA is faster).</li><li>You can ask us to configure your platform so that your comment is included in the bank transfer message so your customer will see it on the bank statement.</li><li><ul><li>The full message will be in the following format \"XXXX-YYYY ZZZZ\", where : </li><li>XXXX is the name of your environment</li><li>YYYY is the ID of the money-out operation as you see it in the backoffice</li><li>ZZZZ is your comment.</li></ul></li><li>The full message cannot be longer than 35 characters (if longer, it will be cut), and only alphanumeric characters will be allowed(other characters will be replaced by spaces before it's sent to the bank).</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyOutsApi.new

parameters = SwaggerClient::MoneyOutInput.new # MoneyOutInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #External fund transfer from a payment account to a bank account
  result = api_instance.money_outs_money_out_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyOutsApi->money_outs_money_out_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyOutInput**](MoneyOutInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyOutOutput**](MoneyOutOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



