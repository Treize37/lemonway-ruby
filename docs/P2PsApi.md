# SwaggerClient::P2PsApi

All URIs are relative to *https://localhost/webservice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**p2_ps_p2p_get**](P2PsApi.md#p2_ps_p2p_get) | **GET** /v2/p2p/{transactionid} | looking for payments between payments accounts
[**p2_ps_p2p_post**](P2PsApi.md#p2_ps_p2p_post) | **POST** /v2/p2p | On-Us payment between payments accounts


# **p2_ps_p2p_get**
> GetPaymentDetailsOutput p2_ps_p2p_get(transactionid, authorization, psu_ip_address, opts)

looking for payments between payments accounts

Returns a lit of payments (between payments accounts ) that match the search fields.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::P2PsApi.new

transactionid = 'transactionid_example' # String | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  transaction_id: 789, # Integer | Transaction ID.
  transaction_comment: 'transaction_comment_example', # String | Transaction comment.
  private_data_value: ['private_data_value_example'], # Array<String> | Up to 20 fields of 256 maximum length
  page: 56, # Integer | index start from 1, let null to get all
  limit: 56, # Integer | default 20, let it null if no pagination
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #looking for payments between payments accounts
  result = api_instance.p2_ps_p2p_get(transactionid, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling P2PsApi->p2_ps_p2p_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionid** | **String**|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **transaction_id** | **Integer**| Transaction ID. | [optional] 
 **transaction_comment** | **String**| Transaction comment. | [optional] 
 **private_data_value** | [**Array&lt;String&gt;**](String.md)| Up to 20 fields of 256 maximum length | [optional] 
 **page** | **Integer**| index start from 1, let null to get all | [optional] 
 **limit** | **Integer**| default 20, let it null if no pagination | [optional] 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**GetPaymentDetailsOutput**](GetPaymentDetailsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p2_ps_p2p_post**
> SendPaymentOutput p2_ps_p2p_post(parameters, authorization, psu_ip_address, opts)

On-Us payment between payments accounts

This function debits a wallet A and credits a wallet B. payments accounts  are internal to Lemon Way, that's the reason we call those operations \"On Us\" operations. You can delay this payment of X days.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::P2PsApi.new

parameters = SwaggerClient::SendPaymentInput.new # SendPaymentInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #On-Us payment between payments accounts
  result = api_instance.p2_ps_p2p_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling P2PsApi->p2_ps_p2p_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**SendPaymentInput**](SendPaymentInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**SendPaymentOutput**](SendPaymentOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



