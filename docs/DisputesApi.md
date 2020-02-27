# SwaggerClient::DisputesApi

All URIs are relative to *https://localhost/webservice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disputes_disputes_get**](DisputesApi.md#disputes_disputes_get) | **GET** /v2/disputes | Get list of disputes from a given date


# **disputes_disputes_get**
> GetChargebacksOutput disputes_disputes_get(update_date, authorization, psu_ip_address, opts)

Get list of disputes from a given date

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DisputesApi.new

update_date = 'update_date_example' # String | UTC Unix timestamp.

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  page: 56, # Integer | index start from 1, let null to get all
  limit: 56, # Integer | default 20, let it null if no pagination
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Get list of disputes from a given date
  result = api_instance.disputes_disputes_get(update_date, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DisputesApi->disputes_disputes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_date** | **String**| UTC Unix timestamp. | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **page** | **Integer**| index start from 1, let null to get all | [optional] 
 **limit** | **Integer**| default 20, let it null if no pagination | [optional] 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**GetChargebacksOutput**](GetChargebacksOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



