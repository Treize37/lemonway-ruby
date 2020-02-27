# LemonWayClient::AccountsApi

All URIs are relative to *https://localhost/webservice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accounts_account_single_get**](AccountsApi.md#accounts_account_single_get) | **GET** /v2/accounts/{accountid} | Getting detailed payment account data
[**accounts_balances_get**](AccountsApi.md#accounts_balances_get) | **GET** /v2/accounts/balances | Getting all payments accounts balances
[**accounts_balances_history_get**](AccountsApi.md#accounts_balances_history_get) | **GET** /v2/accounts/{accountId}/balances/history | Getting payment account balance history
[**accounts_blocked_put**](AccountsApi.md#accounts_blocked_put) | **PUT** /v2/accounts/{accountid}/blocked | Block, unblock account
[**accounts_document_get**](AccountsApi.md#accounts_document_get) | **GET** /v2/accounts/{accountid}/documents | Get the document(s) associate to a payment account
[**accounts_documents_sign_init_post**](AccountsApi.md#accounts_documents_sign_init_post) | **POST** /v2/accounts/{accountid}/documents/{documentid}/signinit | Initialize electronic signature of a document
[**accounts_documents_upload_post**](AccountsApi.md#accounts_documents_upload_post) | **POST** /v2/accounts/{accountid}/documents/upload | document upload for KYC
[**accounts_individual_post**](AccountsApi.md#accounts_individual_post) | **POST** /v2/accounts/individual | Create a new individual account
[**accounts_individual_put**](AccountsApi.md#accounts_individual_put) | **PUT** /v2/accounts/individual/{accountid} | Update payment account data
[**accounts_kyc_status_get**](AccountsApi.md#accounts_kyc_status_get) | **GET** /v2/accounts/kycstatus | Looking for user, document, IBAN, modified since an entry date
[**accounts_kycstatus_put**](AccountsApi.md#accounts_kycstatus_put) | **PUT** /v2/accounts/kycstatus/{accountid} | Update payment account status
[**accounts_legal_post**](AccountsApi.md#accounts_legal_post) | **POST** /v2/accounts/legal | Create a new legal account
[**accounts_legal_single_put**](AccountsApi.md#accounts_legal_single_put) | **PUT** /v2/accounts/legal/{accountid} | Update payment account data
[**accounts_retrieve_post**](AccountsApi.md#accounts_retrieve_post) | **POST** /v2/accounts/retrieve | Getting detailed payments accounts data
[**accounts_transactions_get**](AccountsApi.md#accounts_transactions_get) | **GET** /v2/accounts/{accountId}/transactions | Get list of all transactions of a payment account


# **accounts_account_single_get**
> AccountDetailsOutput accounts_account_single_get(accountid, authorization, psu_ip_address, opts)

Getting detailed payment account data

This method is often used by your system, to get all information regarding a payment account: amount of money in the payment account, IBAN associated to the payment account, document uploaded for KYC(Know Your Customer)...               Everything about one payment account is here.<br />               Fill at least one search field.

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

accountid = 'accountid_example' # String | Account ID

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Getting detailed payment account data
  result = api_instance.accounts_account_single_get(accountid, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_account_single_get: #{e}"
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

[**AccountDetailsOutput**](AccountDetailsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_balances_get**
> AccountBalanceOutput accounts_balances_get(authorization, psu_ip_address, opts)

Getting all payments accounts balances

Use GetBalances to get all payment accounts which balance have changed since the input date,               or all the balances of payment accounts with internal ID between payment accountIdStart and payment accountIdEnd.

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  update_date: 'update_date_example', # String | Date in UTC Seconds.  Leave empty if you wish to use payment account IDs instead.
  internal_account_id_start: 789, # Integer | First payment account internal ID, starting from 12.
  internal_account_id_end: 789, # Integer | Last payment account internal ID, starting from 12.
  page: 56, # Integer | index start from 1, let null to get all
  limit: 56, # Integer | default 20, let it null if no pagination
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Getting all payments accounts balances
  result = api_instance.accounts_balances_get(authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_balances_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **update_date** | **String**| Date in UTC Seconds.  Leave empty if you wish to use payment account IDs instead. | [optional] 
 **internal_account_id_start** | **Integer**| First payment account internal ID, starting from 12. | [optional] 
 **internal_account_id_end** | **Integer**| Last payment account internal ID, starting from 12. | [optional] 
 **page** | **Integer**| index start from 1, let null to get all | [optional] 
 **limit** | **Integer**| default 20, let it null if no pagination | [optional] 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**AccountBalanceOutput**](AccountBalanceOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_balances_history_get**
> BalanceHistoryOutput accounts_balances_history_get(account_id, authorization, psu_ip_address, opts)

Getting payment account balance history

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

account_id = 'account_id_example' # String | Account ID

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  at_date: 'at_date_example', # String | Request balance at at given time in UTC Unix timestamp.
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Getting payment account balance history
  result = api_instance.accounts_balances_history_get(account_id, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_balances_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **at_date** | **String**| Request balance at at given time in UTC Unix timestamp. | [optional] 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**BalanceHistoryOutput**](BalanceHistoryOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_blocked_put**
> AccountBlockedOutput accounts_blocked_put(accountid, parameters, authorization, psu_ip_address, opts)

Block, unblock account

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

accountid = 'accountid_example' # String | Account ID

parameters = LemonWayClient::AccountBlockedInput.new # AccountBlockedInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Block, unblock account
  result = api_instance.accounts_blocked_put(accountid, parameters, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_blocked_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **String**| Account ID | 
 **parameters** | [**AccountBlockedInput**](AccountBlockedInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**AccountBlockedOutput**](AccountBlockedOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_document_get**
> AccountDocumentsOutput accounts_document_get(accountid, authorization, psu_ip_address, opts)

Get the document(s) associate to a payment account

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

accountid = 'accountid_example' # String | Account ID

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Get the document(s) associate to a payment account
  result = api_instance.accounts_document_get(accountid, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_document_get: #{e}"
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

[**AccountDocumentsOutput**](AccountDocumentsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_documents_sign_init_post**
> SignDocumentInitOutput accounts_documents_sign_init_post(accountid, documentid, parameters, authorization, psu_ip_address, opts)

Initialize electronic signature of a document

This functionality allows you to initialize an electronic signature. For now, only SDD mandates can be signed <br />   Prequisites:  <ul><li>A mandate has been initialized with RegisterSddMandate</li></ul>   This functionality will then require 3 integration points:  <ul><li>A call to SignDocumentInit of DIRECTKIT to initialize the signature request and get a token</li><li>A redirection from your website to the WEBKIT, with the token in GET parameter(see Finalize document signature)</li><li>A return page where your user will be redirected after the signature </li></ul>

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

accountid = 'accountid_example' # String | Payment account ID

documentid = 789 # Integer | 

parameters = LemonWayClient::SignDocumentInitInput.new # SignDocumentInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Initialize electronic signature of a document
  result = api_instance.accounts_documents_sign_init_post(accountid, documentid, parameters, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_documents_sign_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **String**| Payment account ID | 
 **documentid** | **Integer**|  | 
 **parameters** | [**SignDocumentInitInput**](SignDocumentInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**SignDocumentInitOutput**](SignDocumentInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_documents_upload_post**
> UploadDocumentOutput accounts_documents_upload_post(accountid, parameters, authorization, psu_ip_address, opts)

document upload for KYC

Use UploadFile to upload documents into a payment account, with a file size smaller than 6 Mb.<br />               For security reason, only those documents types are accepted : PDF, JPG, JPEG et PNG.<br />               Refrain from using TIFF and prefer PDF.

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

accountid = 'accountid_example' # String | Account id

parameters = LemonWayClient::UploadDocumentInput.new # UploadDocumentInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #document upload for KYC
  result = api_instance.accounts_documents_upload_post(accountid, parameters, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_documents_upload_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **String**| Account id | 
 **parameters** | [**UploadDocumentInput**](UploadDocumentInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**UploadDocumentOutput**](UploadDocumentOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_individual_post**
> RegisterIndividualAccountOutput accounts_individual_post(parameters, authorization, psu_ip_address, opts)

Create a new individual account

By calling this method, the WHITE BRAND asks Lemon Way to create a individual payment account. <br />   1. Users enters its data on your web site, for example on his 'profile' area on your web site <br />   2. Your serveur calls our Accounts API <br />   3. Lemon Way creates the payment account in your environment <br />   4. Your system reads the answer of this method and informs the user <br />

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

parameters = LemonWayClient::RegisterIndividualAccountInput.new # RegisterIndividualAccountInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Create a new individual account
  result = api_instance.accounts_individual_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_individual_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**RegisterIndividualAccountInput**](RegisterIndividualAccountInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**RegisterIndividualAccountOutput**](RegisterIndividualAccountOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_individual_put**
> UpdateIndividualAccountDetailsOutput accounts_individual_put(accountid, parameters, authorization, psu_ip_address, opts)

Update payment account data

With this method, the WHITE BRAND system asks Lemon Way to update information related to a CLIENT payment account.  1. The user enters his new data  2. The user calls the Lemon Way webservice  3. Lemon Way records data when it exists  4. The application processes Lemon Way's response and displays a confirmation message

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

accountid = 'accountid_example' # String | Account ID

parameters = LemonWayClient::UpdateIndividualAccountDetailsInput.new # UpdateIndividualAccountDetailsInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Update payment account data
  result = api_instance.accounts_individual_put(accountid, parameters, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_individual_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **String**| Account ID | 
 **parameters** | [**UpdateIndividualAccountDetailsInput**](UpdateIndividualAccountDetailsInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**UpdateIndividualAccountDetailsOutput**](UpdateIndividualAccountDetailsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_kyc_status_get**
> KycStatusOutput accounts_kyc_status_get(update_date, authorization, psu_ip_address, opts)

Looking for user, document, IBAN, modified since an entry date

Use this method to look for users, documents, IBAN for which the status has changed since a specified date. <br />  NOTE :<br />  This method will return the same user multiple times in the same request if his status has changed multiple time since a specified date.

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

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
  #Looking for user, document, IBAN, modified since an entry date
  result = api_instance.accounts_kyc_status_get(update_date, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_kyc_status_get: #{e}"
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

[**KycStatusOutput**](KycStatusOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_kycstatus_put**
> UpdateAccountStatusOutput accounts_kycstatus_put(accountid, parameters, authorization, psu_ip_address, opts)

Update payment account status

With this method, payment account status can be updated or closed.<br />  NOTE :<br />  This functionality is available depending on your contract.

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

accountid = 'accountid_example' # String | Account ID

parameters = LemonWayClient::UpdateAccountStatusInput.new # UpdateAccountStatusInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Update payment account status
  result = api_instance.accounts_kycstatus_put(accountid, parameters, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_kycstatus_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **String**| Account ID | 
 **parameters** | [**UpdateAccountStatusInput**](UpdateAccountStatusInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**UpdateAccountStatusOutput**](UpdateAccountStatusOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_legal_post**
> RegisterLegalAccountOutput accounts_legal_post(parameters, authorization, psu_ip_address, opts)

Create a new legal account

By calling this method, the WHITE BRAND asks Lemon Way to create a legal payment account. <br />   1. Users enters its data on your web site, for example on his 'profile' area on your web site <br />   2. Your serveur calls our Accounts API <br />   3. Lemon Way creates the payment account in your environment <br />   4. Your system reads the answer of this method and informs the user <br />

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

parameters = LemonWayClient::RegisterLegalAccountInput.new # RegisterLegalAccountInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Create a new legal account
  result = api_instance.accounts_legal_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_legal_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**RegisterLegalAccountInput**](RegisterLegalAccountInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**RegisterLegalAccountOutput**](RegisterLegalAccountOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_legal_single_put**
> UpdateLegalAccountDetailsOutput accounts_legal_single_put(accountid, parameters, authorization, psu_ip_address, opts)

Update payment account data

With this method, the WHITE BRAND system asks Lemon Way to update information related to a CLIENT payment account.  1. The user enters his new data  2. The user calls the Lemon Way webservice  3. Lemon Way records data when it exists  4. The application processes Lemon Way's response and displays a confirmation message

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

accountid = 'accountid_example' # String | Account ID

parameters = LemonWayClient::UpdateLegalAccountDetailsInput.new # UpdateLegalAccountDetailsInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Update payment account data
  result = api_instance.accounts_legal_single_put(accountid, parameters, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_legal_single_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountid** | **String**| Account ID | 
 **parameters** | [**UpdateLegalAccountDetailsInput**](UpdateLegalAccountDetailsInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**UpdateLegalAccountDetailsOutput**](UpdateLegalAccountDetailsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_retrieve_post**
> AccountDetailsBatchOutput accounts_retrieve_post(parameters, authorization, psu_ip_address, opts)

Getting detailed payments accounts data

This method is often used by your system, to get all information regarding a payment account: amount of money in the payment account, IBAN associated to the payment account, document uploaded for KYC(Know Your Customer)              Everything about one payment account is here.<br />               Fill at least one search field.

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

parameters = LemonWayClient::AccountDetailsBatchInput.new # AccountDetailsBatchInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  page: 56, # Integer | 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Getting detailed payments accounts data
  result = api_instance.accounts_retrieve_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_retrieve_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**AccountDetailsBatchInput**](AccountDetailsBatchInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **page** | **Integer**|  | [optional] 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**AccountDetailsBatchOutput**](AccountDetailsBatchOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **accounts_transactions_get**
> AccountKycStatusOutput accounts_transactions_get(account_id, authorization, psu_ip_address, opts)

Get list of all transactions of a payment account

Use GetWalletTransHistory to retrieve the list of money-in, money-out and p2p (payment between payment account) of a given payment account.

### Example
```ruby
# load the gem
require 'lemonway-ruby'

api_instance = LemonWayClient::AccountsApi.new

account_id = 'account_id_example' # String | Accounbt ID

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  start_date: 'start_date_example', # String | UTC Unix timestamp.  In order to return transactions initialized after startDate.  If the payment account is \"SC\" then this value is mandatory.
  end_date: 'end_date_example', # String | UTC Unix timestamp.  In order to return transactions initialized before endDate.  If the payment account is \"SC\" then this value is mandatory and the time span cannot exceed 1 week.
  page: 56, # Integer | index start from 1, let null to get all
  limit: 56, # Integer | default 20, let it null if no pagination
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Get list of all transactions of a payment account
  result = api_instance.accounts_transactions_get(account_id, authorization, psu_ip_address, opts)
  p result
rescue LemonWayClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_transactions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Accounbt ID | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **start_date** | **String**| UTC Unix timestamp.  In order to return transactions initialized after startDate.  If the payment account is \&quot;SC\&quot; then this value is mandatory. | [optional] 
 **end_date** | **String**| UTC Unix timestamp.  In order to return transactions initialized before endDate.  If the payment account is \&quot;SC\&quot; then this value is mandatory and the time span cannot exceed 1 week. | [optional] 
 **page** | **Integer**| index start from 1, let null to get all | [optional] 
 **limit** | **Integer**| default 20, let it null if no pagination | [optional] 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**AccountKycStatusOutput**](AccountKycStatusOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



