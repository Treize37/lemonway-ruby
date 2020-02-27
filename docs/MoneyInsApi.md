# SwaggerClient::MoneyInsApi

All URIs are relative to *https://localhost/webservice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**money_ins_bankwire_get**](MoneyInsApi.md#money_ins_bankwire_get) | **GET** /v2/moneyins/bankwire | looking for a MONEY-IN by fund transfer
[**money_ins_bankwire_iban_create_post**](MoneyInsApi.md#money_ins_bankwire_iban_create_post) | **POST** /v2/moneyins/bankwire/iban/create | Create a dedicated IBAN
[**money_ins_bankwire_iban_disable_post**](MoneyInsApi.md#money_ins_bankwire_iban_disable_post) | **POST** /v2/moneyins/bankwire/iban/{ibanid}/disable | Disable a dedicated IBAN
[**money_ins_cancel_put**](MoneyInsApi.md#money_ins_cancel_put) | **PUT** /v2/moneyins/{transactionid}/cancel | Cancel a money in
[**money_ins_card_direct3_d_authenticate_post**](MoneyInsApi.md#money_ins_card_direct3_d_authenticate_post) | **POST** /v2/moneyins/card/direct/{transactionid}/3dauthenticate | Check moneyin 3D-Secure status
[**money_ins_card_direct3_d_confirm_put**](MoneyInsApi.md#money_ins_card_direct3_d_confirm_put) | **PUT** /v2/moneyins/card/direct/{transactionid}/3dconfirm | Moneyin 3D Confirm
[**money_ins_card_direct_post**](MoneyInsApi.md#money_ins_card_direct_post) | **POST** /v2/moneyins/card/direct | Credit an account with a non 3D Secure card payment
[**money_ins_card_get**](MoneyInsApi.md#money_ins_card_get) | **GET** /v2/moneyins/{accountid}/card | Get the card(s) associate to a payment account
[**money_ins_card_payment_form_post**](MoneyInsApi.md#money_ins_card_payment_form_post) | **POST** /v2/moneyins/card/paymentform | Create payment form
[**money_ins_card_rebill**](MoneyInsApi.md#money_ins_card_rebill) | **POST** /v2/moneyins/card/{cardid}/rebill | Credit of a payment account with a tokenized card
[**money_ins_card_register_post**](MoneyInsApi.md#money_ins_card_register_post) | **POST** /v2/moneyins/card/register | Resgister a card
[**money_ins_card_subscription_post**](MoneyInsApi.md#money_ins_card_subscription_post) | **POST** /v2/moneyins/card/{cardid}/subscription | Payment account credited with monthly subscription by card
[**money_ins_card_unregister_put**](MoneyInsApi.md#money_ins_card_unregister_put) | **PUT** /v2/moneyins/card/{cardid}/unregister | Unregister a card token
[**money_ins_card_web_init_post**](MoneyInsApi.md#money_ins_card_web_init_post) | **POST** /v2/moneyins/card/webinit | Indirect mode MONEY-IN by card crediting a payment account
[**money_ins_cheque_get**](MoneyInsApi.md#money_ins_cheque_get) | **GET** /v2/moneyins/cheque | Search for MONEY-IN by cheque since a date
[**money_ins_cheque_init_post**](MoneyInsApi.md#money_ins_cheque_init_post) | **POST** /v2/moneyins/cheque/init | Register a money-in by cheque
[**money_ins_direct3_d_init_post**](MoneyInsApi.md#money_ins_direct3_d_init_post) | **POST** /v2/moneyins/card/direct/3dinit | Credit a account with a 3D Secure card payment
[**money_ins_i_deal_confirm_put**](MoneyInsApi.md#money_ins_i_deal_confirm_put) | **PUT** /v2/moneyins/ideal/{transactionid}/confirm | Finalization of the iDeal payment
[**money_ins_i_deal_init_post**](MoneyInsApi.md#money_ins_i_deal_init_post) | **POST** /v2/moneyins/ideal/init | Initialize iDeal payment
[**money_ins_mandate_get**](MoneyInsApi.md#money_ins_mandate_get) | **GET** /v2/moneyins/{accountid}/mandate | Get the mandate(s) associate to a payment account
[**money_ins_mbway_init_post**](MoneyInsApi.md#money_ins_mbway_init_post) | **POST** /v2/moneyins/mbway/init | Initialize MB WAY payment
[**money_ins_mobile_pay_init_post**](MoneyInsApi.md#money_ins_mobile_pay_init_post) | **POST** /v2/moneyins/mobilePay/init | Initialize MobilePay payment
[**money_ins_money_in_get**](MoneyInsApi.md#money_ins_money_in_get) | **GET** /v2/moneyins | Get MoneyIn
[**money_ins_multibanco_init_post**](MoneyInsApi.md#money_ins_multibanco_init_post) | **POST** /v2/moneyins/multibanco/init | Initialize Multibanco payment
[**money_ins_pay_trail_init_post**](MoneyInsApi.md#money_ins_pay_trail_init_post) | **POST** /v2/moneyins/paytrail/init | Initialize PayTrail payment
[**money_ins_payment_form_completed_get**](MoneyInsApi.md#money_ins_payment_form_completed_get) | **GET** /v2/moneyins/paymentform/{formid}/completed | Get details of a completed payment form
[**money_ins_payment_form_disable_put**](MoneyInsApi.md#money_ins_payment_form_disable_put) | **PUT** /v2/moneyins/paymentform/{formid}/disable | Disable a payment form
[**money_ins_payshop_init_post**](MoneyInsApi.md#money_ins_payshop_init_post) | **POST** /v2/moneyins/payshop/init | Initialize Payshop payment
[**money_ins_sdd_get**](MoneyInsApi.md#money_ins_sdd_get) | **GET** /v2/moneyins/sdd | List of money-in by SDD
[**money_ins_sdd_init_post**](MoneyInsApi.md#money_ins_sdd_init_post) | **POST** /v2/moneyins/sdd/init | Request a Direct Debit (SDD)
[**money_ins_sdd_mandate_post**](MoneyInsApi.md#money_ins_sdd_mandate_post) | **POST** /v2/moneyins/sdd/mandate | Pre-register an SDD mandate
[**money_ins_sdd_mandate_unregister_put**](MoneyInsApi.md#money_ins_sdd_mandate_unregister_put) | **PUT** /v2/moneyins/sdd/mandate/{mandatid}/unregister | Deactivate a mandate
[**money_ins_sofort_init_post**](MoneyInsApi.md#money_ins_sofort_init_post) | **POST** /v2/moneyins/sofort/init | Initialize Sofort payment
[**money_ins_trustly_init_post**](MoneyInsApi.md#money_ins_trustly_init_post) | **POST** /v2/moneyins/trustly/init | Initialize Trustly payment
[**money_ins_validate_put**](MoneyInsApi.md#money_ins_validate_put) | **PUT** /v2/moneyins/{transactionid}/validate | Validation of a Money-In (deffered payment only)


# **money_ins_bankwire_get**
> GetMoneyInIBANDetailsOutput money_ins_bankwire_get(update_date, authorization, psu_ip_address, opts)

looking for a MONEY-IN by fund transfer

Use GetMoneyInIBANStatus to obtain the list of all MONEY-IN by fund transfer (not by card payment) received by Lemon Way, starting from an entry date given in input to this method.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

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
  #looking for a MONEY-IN by fund transfer
  result = api_instance.money_ins_bankwire_get(update_date, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_bankwire_get: #{e}"
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

[**GetMoneyInIBANDetailsOutput**](GetMoneyInIBANDetailsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_bankwire_iban_create_post**
> CreateIBANOutput money_ins_bankwire_iban_create_post(parameters, authorization, psu_ip_address, opts)

Create a dedicated IBAN

This functionality enables the WHITE BRAND to create dedicated (virtual) IBANs. These IBANs are linked to a dedicated payment account and give the possibility to the WHITE BRAND to receive wire transfers directly to these accounts. The payment schema must be validated prior with Lemon Way. This function should be called once the WHITE BRAND is certain a payment will be received. We strongly advise against associating an IBAN to a payment account preventively. Please contact your account manager to have this function activated.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::CreateIBANInput.new # CreateIBANInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Create a dedicated IBAN
  result = api_instance.money_ins_bankwire_iban_create_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_bankwire_iban_create_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**CreateIBANInput**](CreateIBANInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**CreateIBANOutput**](CreateIBANOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json



# **money_ins_bankwire_iban_disable_post**
> DisableIBANOutput money_ins_bankwire_iban_disable_post(ibanid, parameters, authorization, psu_ip_address, opts)

Disable a dedicated IBAN

This functionality enables the WHITE BRAND to disable dedicated IBANs.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

ibanid = 789 # Integer | 

parameters = SwaggerClient::DisableIBANInput.new # DisableIBANInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Disable a dedicated IBAN
  result = api_instance.money_ins_bankwire_iban_disable_post(ibanid, parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_bankwire_iban_disable_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ibanid** | **Integer**|  | 
 **parameters** | [**DisableIBANInput**](DisableIBANInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**DisableIBANOutput**](DisableIBANOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json



# **money_ins_cancel_put**
> CancelMoneyInOutput money_ins_cancel_put(transactionid, parameters, authorization, psu_ip_address, opts)

Cancel a money in

With the \"CancelMoneyIn\" method, the WHITE BRAND can cancel a pre-authorization / SDD request.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

transactionid = 789 # Integer | 

parameters = SwaggerClient::CancelMoneyInInput.new # CancelMoneyInInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Cancel a money in
  result = api_instance.money_ins_cancel_put(transactionid, parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_cancel_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionid** | **Integer**|  | 
 **parameters** | [**CancelMoneyInInput**](CancelMoneyInInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**CancelMoneyInOutput**](CancelMoneyInOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_card_direct3_d_authenticate_post**
> MoneyIn3DAuthenticateOutput money_ins_card_direct3_d_authenticate_post(transactionid, parameters, authorization, psu_ip_address, opts)

Check moneyin 3D-Secure status

After initializing a 3DS transaction with MoneyIn3DInit, you can choose not to debit the card, and only check if the user has successfully authenticated using 3D Secure.<br /><br /><b>This is not a payment.</b><br /><br /><b>You cannot use both MoneyIn3DAuthenticate and MoneyIn3DConfirm. You need to choose if you only want to check if the user was correctly authenticated (use MoneyIn3DAuthenticate), or if you want to receive the payment using 3DS (use MoneyIn3DConfirm in this case).</b><br /><br />  A typical use-case: you want to allow your user to save a card for rebills (RegisterCard), but first, you want to make sure that the card belongs to the user and that the user can authenticate successfully.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

transactionid = 789 # Integer | 

parameters = SwaggerClient::MoneyIn3DAuthenticateInput.new # MoneyIn3DAuthenticateInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Check moneyin 3D-Secure status
  result = api_instance.money_ins_card_direct3_d_authenticate_post(transactionid, parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_card_direct3_d_authenticate_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionid** | **Integer**|  | 
 **parameters** | [**MoneyIn3DAuthenticateInput**](MoneyIn3DAuthenticateInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyIn3DAuthenticateOutput**](MoneyIn3DAuthenticateOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_card_direct3_d_confirm_put**
> MoneyIn3DConfirmOutput money_ins_card_direct3_d_confirm_put(transactionid, parameters, authorization, psu_ip_address, opts)

Moneyin 3D Confirm

This method finalizes the credit of a wallet by card after 3D Secure authentication of the CLIENT:<br />  1. After initializationwith MoneyIn3DInit, the application redirects its CLIENT on the authentication web site of the bank that did emit the card.  2. The CLIENT ahtienticates on the bank web site (SMS or password for 3D Secure depending on the bank process) than returns on the WHITE BRAND server. If using Atos, no other data will be returned. If using another partner, POST data will be returned.  3. The application calls MoneyIn3DConfirm with according data, to finalize the credit of the wallet and the debit of the payment card.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

transactionid = 789 # Integer | 

parameters = SwaggerClient::MoneyIn3DConfirmInput.new # MoneyIn3DConfirmInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Moneyin 3D Confirm
  result = api_instance.money_ins_card_direct3_d_confirm_put(transactionid, parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_card_direct3_d_confirm_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionid** | **Integer**|  | 
 **parameters** | [**MoneyIn3DConfirmInput**](MoneyIn3DConfirmInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyIn3DConfirmOutput**](MoneyIn3DConfirmOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_card_direct_post**
> MoneyInOutput money_ins_card_direct_post(parameters, authorization, psu_ip_address, opts)

Credit an account with a non 3D Secure card payment

One call and you are all set, with this method. Easy to deploy, but without 3D Secure. Should only be used for mobile application. You should prefer 3D Secure payment for Internet payment.<br />  By calling this method, our system credits the wallet and debits the card, in real time.Your server has to send us the wallet ID to credit, all card data, the amount, and a comment.<br /><b>Please remember not to save any card data on your system, if your system is not PCI-DSS.</b>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyInInput.new # MoneyInInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Credit an account with a non 3D Secure card payment
  result = api_instance.money_ins_card_direct_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_card_direct_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyInInput**](MoneyInInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInOutput**](MoneyInOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_card_get**
> AccountCardsOutput money_ins_card_get(accountid, authorization, psu_ip_address, opts)

Get the card(s) associate to a payment account

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

accountid = 'accountid_example' # String | Account ID

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Get the card(s) associate to a payment account
  result = api_instance.money_ins_card_get(accountid, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_card_get: #{e}"
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

[**AccountCardsOutput**](AccountCardsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_card_payment_form_post**
> CreatePaymentFormOutput money_ins_card_payment_form_post(parameters, authorization, psu_ip_address, opts)

Create payment form

This feature allows the WHITE BRAND create a payment form for a payer.  <ul><li>The form is accessible to public, anyone can pay with a link to the payment form</li><li>Payment forms are generated and managed by Lemonway</li><li>They support only payment by credit card (only for ATOSv1, ATOSv2 &amp; PAYXPERT)</li><li>Deferred payment is not yet supported</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::CreatePaymentFormInput.new # CreatePaymentFormInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Create payment form
  result = api_instance.money_ins_card_payment_form_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_card_payment_form_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**CreatePaymentFormInput**](CreatePaymentFormInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**CreatePaymentFormOutput**](CreatePaymentFormOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_card_rebill**
> MoneyInWithCardIdOutput money_ins_card_rebill(cardid, parameters, authorization, psu_ip_address, opts)

Credit of a payment account with a tokenized card

Use this method to ask to credit a payment account with a card linked to the payment account : <br />  Your WHITE BRAND application sends the payment account ID to credit, the card ID, and the amount to credit,   and a Comment explaining the rebill <br />  Why this card is rebilled : is it a monthly payment for a service, which service,  which website, which command, with which Email.Please make sure you add all information regarding the Rebill   on this comment field. We may ask you to add more information on this field to answer complains directly coming   to our Customer Service from your customers, or from banks, or from the police, or from Visa/Mastercard, or from the regulator.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

cardid = 789 # Integer | 

parameters = SwaggerClient::MoneyInWithCardIdInput.new # MoneyInWithCardIdInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Credit of a payment account with a tokenized card
  result = api_instance.money_ins_card_rebill(cardid, parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_card_rebill: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cardid** | **Integer**|  | 
 **parameters** | [**MoneyInWithCardIdInput**](MoneyInWithCardIdInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInWithCardIdOutput**](MoneyInWithCardIdOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_card_register_post**
> RegisterCardOutput money_ins_card_register_post(parameters, authorization, psu_ip_address, opts)

Resgister a card

Create a link between a wallet and a card. Your customers won't have to enter their fastidious card details again (16 digits of the card, CVV, expiration date, card type). Less hasle for your customers.<br /><b>Make sure the login on your website is secured enough to avoid phishing. Someone else could log on your website, pretend to be a customer that did memorize its card on your website, and use someone else card to pay on your website</b>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::RegisterCardInput.new # RegisterCardInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Resgister a card
  result = api_instance.money_ins_card_register_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_card_register_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**RegisterCardInput**](RegisterCardInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**RegisterCardOutput**](RegisterCardOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_card_subscription_post**
> MoneyInSubscriptionInitOutput money_ins_card_subscription_post(cardid, parameters, authorization, psu_ip_address, opts)

Payment account credited with monthly subscription by card

This function allow partner to subscribe to monthly rebill operation. <br />  1. The WHITE BRAND communicate to lemonway which is the date of the month they wish to make the monthly rebill.  2. LemonWay will initialize the subscription by creating the count pending transactions with different execution dates (monthly).  3. On the execution date, LemonWay will debit (rebill) the card, switch the pending transaction to success and notify the WHITE BRAND.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

cardid = 789 # Integer | 

parameters = SwaggerClient::MoneyInSubscriptionInitInput.new # MoneyInSubscriptionInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Payment account credited with monthly subscription by card
  result = api_instance.money_ins_card_subscription_post(cardid, parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_card_subscription_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cardid** | **Integer**|  | 
 **parameters** | [**MoneyInSubscriptionInitInput**](MoneyInSubscriptionInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInSubscriptionInitOutput**](MoneyInSubscriptionInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_card_unregister_put**
> UnregisterCardOutput money_ins_card_unregister_put(cardid, parameters, authorization, psu_ip_address, opts)

Unregister a card token

This method breaks the link between a card and a payment account.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

cardid = 789 # Integer | 

parameters = SwaggerClient::UnregisterCardInput.new # UnregisterCardInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Unregister a card token
  result = api_instance.money_ins_card_unregister_put(cardid, parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_card_unregister_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cardid** | **Integer**|  | 
 **parameters** | [**UnregisterCardInput**](UnregisterCardInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**UnregisterCardOutput**](UnregisterCardOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_card_web_init_post**
> MoneyInWebInitOutput money_ins_card_web_init_post(parameters, authorization, psu_ip_address, opts)

Indirect mode MONEY-IN by card crediting a payment account

This functionality enables the WHITE BRAND to use our card payment web pages.<br />  On request, it is possible to setup the payment page so that all payments will be differed and will have to be validated(by calling MoneyInValidate within 6 days).  This functionality enables the WHITE BRAND to use our card payment web pages.<br />  1. The WHITE BRAND calls this function to create a MoneyInToken<br />  2. The end-user will be redirected to the payment page<br />  3. The WHITE BRAND will need 3 integration points to handle the payment result:<br /><ul><li>returnUrl in case of success</li><li>cancelUrl in case of cancellation</li><li>errorUrl in case of error</li></ul>  These 3 URLs must be public accessible so your end-user, and our WEBKIT server could send requests to them.<br />  Next step: redirect end-user to the payment page <br />  Once you got the token of the transaction. You will redirect your client to the payment page<br />  In most case, you will have to combine the Token and the WEBKIT URL to get the payment page URL<br />  For example: https://sandbox-webkit.lemonway.fr/YOUR_COMPANY/dev/?moneyintoken=1wGaBwkdOmOxWT0s4t1Z1364815  You should find the URL of the WEBKIT in the onboarding email.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyInWebInitInput.new # MoneyInWebInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Indirect mode MONEY-IN by card crediting a payment account
  result = api_instance.money_ins_card_web_init_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_card_web_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyInWebInitInput**](MoneyInWebInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInWebInitOutput**](MoneyInWebInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_cheque_get**
> GetMoneyInChequeDetailsOutput money_ins_cheque_get(update_date, authorization, psu_ip_address, opts)

Search for MONEY-IN by cheque since a date

Use GetMoneyInChequeStatus to obtain the list of all MONEY-IN by cheque (received by Lemon Way), starting from an entry date given in input to this method.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

update_date = 'update_date_example' # String | UTC Unix timestamp.

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  cheque_type: 56, # Integer | Cheque payment (by default) or Pagaré.  15 = Cheque payment.  23 = Pagaré.
  page: 56, # Integer | index start from 1, let null to get all
  limit: 56, # Integer | default 20, let it null if no pagination
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Search for MONEY-IN by cheque since a date
  result = api_instance.money_ins_cheque_get(update_date, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_cheque_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_date** | **String**| UTC Unix timestamp. | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **cheque_type** | **Integer**| Cheque payment (by default) or Pagaré.  15 &#x3D; Cheque payment.  23 &#x3D; Pagaré. | [optional] 
 **page** | **Integer**| index start from 1, let null to get all | [optional] 
 **limit** | **Integer**| default 20, let it null if no pagination | [optional] 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**GetMoneyInChequeDetailsOutput**](GetMoneyInChequeDetailsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_cheque_init_post**
> MoneyInChequeInitOutput money_ins_cheque_init_post(parameters, authorization, psu_ip_address, opts)

Register a money-in by cheque

Please observe the following rules:  If you want to pre-enter the cheques in our system, use the MoneyInChequeInit function <br />  The cheque must be made out to Lemon Way<br />  On the back of the cheque, please enter a code to facilitate reconciliation.It will be of the following form: XXXXX-YYYYYYYYYY <br /><ul><li>\"XXXXX: code identifying the white label, as indicated in your production configuration form </li><li>-: a separation dash:</li><li>YYYYYYYYY : external identifier of your user's payment account </li></ul>  The holder of the cheque must be identical to that of the payment account to be credited <br />

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyInChequeInitInput.new # MoneyInChequeInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Register a money-in by cheque
  result = api_instance.money_ins_cheque_init_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_cheque_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyInChequeInitInput**](MoneyInChequeInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInChequeInitOutput**](MoneyInChequeInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_direct3_d_init_post**
> MoneyIn3DInitOutput money_ins_direct3_d_init_post(parameters, authorization, psu_ip_address, opts)

Credit a account with a 3D Secure card payment

This method is more complex that non 3D Secure payment, but 3D Secure will secure your business.<br /><br />  You will need 3 integration points: <br />  1. Your server calls MoneyIn3DInit from DIRECTKIT to initialize MONEY-IN of the wallet: Wallet ID, amount, card data. LEMON WAY returns information to redirect your CLIENT on his 3DSecure bank web page, and the ID of the transaction that will be needed to finalize the payment.  2. Your server redirects the CLIENT to the 3D Secure authentication page. The transaction will expire 15 minutes after the MoneyIn3DInit call.  3. Your server waits for return of the CLIENT from the 3D Secure, and then calls MoneyIn3DConfirm from DIRECTKIT to ask the debit of the card.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyIn3DInitInput.new # MoneyIn3DInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Credit a account with a 3D Secure card payment
  result = api_instance.money_ins_direct3_d_init_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_direct3_d_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyIn3DInitInput**](MoneyIn3DInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyIn3DInitOutput**](MoneyIn3DInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_i_deal_confirm_put**
> MoneyInIDealConfirmOutput money_ins_i_deal_confirm_put(transactionid, authorization, psu_ip_address, opts)

Finalization of the iDeal payment

This method finalizes the credit of a payment account by iDeal, after the user has returned to your website.<br />              You can only finalize the operation once.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

transactionid = 789 # Integer | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Finalization of the iDeal payment
  result = api_instance.money_ins_i_deal_confirm_put(transactionid, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_i_deal_confirm_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionid** | **Integer**|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInIDealConfirmOutput**](MoneyInIDealConfirmOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_i_deal_init_post**
> MoneyInIDealInitOutput money_ins_i_deal_init_post(parameters, authorization, psu_ip_address, opts)

Initialize iDeal payment

You will need 3 integration points on your code:  <ul><li>One call to DIRECTKIT to init iDeal payment to credit the payment account</li><li>One redirection from your WHITE BRAND web site to the return URL by IDealInit</li><li>One call to DIRECTKIT to finalize the iDeal payment</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyInIDealInitInput.new # MoneyInIDealInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Initialize iDeal payment
  result = api_instance.money_ins_i_deal_init_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_i_deal_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyInIDealInitInput**](MoneyInIDealInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInIDealInitOutput**](MoneyInIDealInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_mandate_get**
> AccountMandatsOutput money_ins_mandate_get(accountid, authorization, psu_ip_address, opts)

Get the mandate(s) associate to a payment account

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

accountid = 'accountid_example' # String | Account ID

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Get the mandate(s) associate to a payment account
  result = api_instance.money_ins_mandate_get(accountid, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_mandate_get: #{e}"
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

[**AccountMandatsOutput**](AccountMandatsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_mbway_init_post**
> MoneyInMbwayInitOutput money_ins_mbway_init_post(parameters, authorization, psu_ip_address, opts)

Initialize MB WAY payment

Payment process :  <ul><li>the WHITE BRAND call DIRECTKIT API, provide a phone number to initialize the payment</li><li>the payment order is sent to the customer's smartphone</li><li>the customer pays with his smartphone</li><li>the WHITE BRAND will be notified after the payment is settled</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyInMbwayInitInput.new # MoneyInMbwayInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Initialize MB WAY payment
  result = api_instance.money_ins_mbway_init_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_mbway_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyInMbwayInitInput**](MoneyInMbwayInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInMbwayInitOutput**](MoneyInMbwayInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_mobile_pay_init_post**
> MoneyInMobilePayInitOutput money_ins_mobile_pay_init_post(parameters, authorization, psu_ip_address, opts)

Initialize MobilePay payment

You will need 2 integration points on your code:  <ul><li>One call to DIRECTKIT to init MobilePay payment to credit the payment account</li><li>One redirection from your WHITE BRAND web site to the return URL by MobilePay</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyInMobilePayInitInput.new # MoneyInMobilePayInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Initialize MobilePay payment
  result = api_instance.money_ins_mobile_pay_init_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_mobile_pay_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyInMobilePayInitInput**](MoneyInMobilePayInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInMobilePayInitOutput**](MoneyInMobilePayInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_money_in_get**
> GetMoneyInTransDetailsOutput money_ins_money_in_get(authorization, psu_ip_address, opts)

Get MoneyIn

Use \"GetMoneyInTransDetails\" to check and get details about a MONEY-IN that was done.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  transaction_id: 789, # Integer | MONEY-IN ID.
  transaction_comment: 'transaction_comment_example', # String | MONEY-IN Comment.
  transaction_merchant_token: 'transaction_merchant_token_example', # String | Token from wkToken variable.
  start_date: 'start_date_example', # String | UTC Unix timestamp, in order to return transactions initialized after it.
  end_date: 'end_date_example', # String | UTC Unix timestamp, in order to return transactions initialized before it.
  page: 56, # Integer | index start from 1, let null to get all
  limit: 56, # Integer | default 20, let it null if no pagination
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Get MoneyIn
  result = api_instance.money_ins_money_in_get(authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_money_in_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **transaction_id** | **Integer**| MONEY-IN ID. | [optional] 
 **transaction_comment** | **String**| MONEY-IN Comment. | [optional] 
 **transaction_merchant_token** | **String**| Token from wkToken variable. | [optional] 
 **start_date** | **String**| UTC Unix timestamp, in order to return transactions initialized after it. | [optional] 
 **end_date** | **String**| UTC Unix timestamp, in order to return transactions initialized before it. | [optional] 
 **page** | **Integer**| index start from 1, let null to get all | [optional] 
 **limit** | **Integer**| default 20, let it null if no pagination | [optional] 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**GetMoneyInTransDetailsOutput**](GetMoneyInTransDetailsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_multibanco_init_post**
> MoneyInMultibancoInitOutput money_ins_multibanco_init_post(parameters, authorization, psu_ip_address, opts)

Initialize Multibanco payment

Payment process :  <ul><li>the WHITE BRAND calls DIRECTKIT API to initialize the credit transaction of a payment account and get a payment reference</li><li>the WHITE BRAND gives the payment reference to the final customer</li><li>the customer uses the reference to pay on an ATM</li><li>the WHITE BRAND will be notified after the payment is settled</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyInMultibancoInitInput.new # MoneyInMultibancoInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Initialize Multibanco payment
  result = api_instance.money_ins_multibanco_init_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_multibanco_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyInMultibancoInitInput**](MoneyInMultibancoInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInMultibancoInitOutput**](MoneyInMultibancoInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_pay_trail_init_post**
> MoneyInPayTrailInitOutput money_ins_pay_trail_init_post(parameters, authorization, psu_ip_address, opts)

Initialize PayTrail payment

You will need 2 integration points on your code:  <ul><li>One call to DIRECTKIT to init PayTrail payment to credit the payment account</li><li>One redirection from your WHITE BRAND web site to the return URL by PayTrail</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyInPayTrailInitInput.new # MoneyInPayTrailInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Initialize PayTrail payment
  result = api_instance.money_ins_pay_trail_init_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_pay_trail_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyInPayTrailInitInput**](MoneyInPayTrailInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInPayTrailInitOutput**](MoneyInPayTrailInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_payment_form_completed_get**
> GetCompletedPaymentFormOutput money_ins_payment_form_completed_get(formid, authorization, psu_ip_address, opts)

Get details of a completed payment form

This function allows you to retreive the status of a \"completed (or filled) payment form\" <br />  Scenario  <ul><li>Using the CreatePaymentForm function, you(WHITE BRAND) had generated a re-usable Payment Form(with the form Id is for example 579c7def4bb0411da294d9b57c2c1323)</li><li>Some clients filled the form and make payment.</li><li>Each time a client completes the form and click on the \"Accept and Pay\" button, LemonWay will store the completed form and generate a new id for it, for example 7e98be392a5e45f6bc357a9ab8c623d2</li><li>The initial status of the \"completed form\" is PENDING.When client finish the payment process, it will switch to PAID.It could also switch to CANCEL or ERROR..</li><li>In this example, the completed form 7e98.. was created from the parent form 579c..The form 579c.. is reusable, which means it can be completed several time by different clients, so it could have many completed version.This function allows you to retreive the status of a the filled form via its id (7e98..).</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

formid = 'formid_example' # String | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Get details of a completed payment form
  result = api_instance.money_ins_payment_form_completed_get(formid, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_payment_form_completed_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formid** | **String**|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**GetCompletedPaymentFormOutput**](GetCompletedPaymentFormOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_payment_form_disable_put**
> DisablePaymentFormOutput money_ins_payment_form_disable_put(formid, authorization, psu_ip_address, opts)

Disable a payment form

Disable a payment form created by CreatePaymentForm.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

formid = 'formid_example' # String | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Disable a payment form
  result = api_instance.money_ins_payment_form_disable_put(formid, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_payment_form_disable_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formid** | **String**|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**DisablePaymentFormOutput**](DisablePaymentFormOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_payshop_init_post**
> MoneyInPayshopInitOutput money_ins_payshop_init_post(parameters, authorization, psu_ip_address, opts)

Initialize Payshop payment

Payment process  <ul><li>the WHITE BRAND call DIRECTKIT API to initialize the credit transaction of a payment account and get a payment reference</li><li>the WHITE BRAND gives the payment reference to the final customer</li><li>the customer uses the reference to pay in a shop</li><li>the WHITE BRAND will be notified after the payment is settled</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyInPayshopInitInput.new # MoneyInPayshopInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Initialize Payshop payment
  result = api_instance.money_ins_payshop_init_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_payshop_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyInPayshopInitInput**](MoneyInPayshopInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInPayshopInitOutput**](MoneyInPayshopInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_sdd_get**
> GetMoneyInSddOutput money_ins_sdd_get(update_date, authorization, psu_ip_address, opts)

List of money-in by SDD

Returns the list of money-in by SDD which status has changed since the input date.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

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
  #List of money-in by SDD
  result = api_instance.money_ins_sdd_get(update_date, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_sdd_get: #{e}"
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

[**GetMoneyInSddOutput**](GetMoneyInSddOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_sdd_init_post**
> MoneyInSddInitOutput money_ins_sdd_init_post(parameters, authorization, psu_ip_address, opts)

Request a Direct Debit (SDD)

SDD requests are sent to our bank every working day at 10:30.<br />  Prequisites:<br />  1. You allow your CLIENT to fill in a mandate, and pre-register it with Lemon Way, by calling RegisterSddMandate<br />  2. Follow the SignDocumentInit process in order to electronically sign the mandate<br />  Request the direct debit:<br />  1. You call MoneyInSddInit to ask for a debit<br />  2. Lemon Way sends the request to the bank every working day at 10:30, Paris time.<br />  3. Once the request is sent to the bank, the actual debit on the CLIENT's bank account will happen about 1 working days later. If you indicate a date, the debit will happen on the given date.<br />  4. When Lemon Way receives the payment, the SDD payment will be validated and the CLIENT payment account will be credited<br />  5. You can call GetMoneyInSdd once a day in order to know which payments have been validated.You can also use our notification functionality.<br />

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyInSddInitInput.new # MoneyInSddInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Request a Direct Debit (SDD)
  result = api_instance.money_ins_sdd_init_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_sdd_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyInSddInitInput**](MoneyInSddInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInSddInitOutput**](MoneyInSddInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_sdd_mandate_post**
> RegisterSddMandateOutput money_ins_sdd_mandate_post(parameters, authorization, psu_ip_address, opts)

Pre-register an SDD mandate

This method allows you to pre-register a mandate. It will then be pending approval from Lemon Way. <br />

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::RegisterSddMandateInput.new # RegisterSddMandateInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Pre-register an SDD mandate
  result = api_instance.money_ins_sdd_mandate_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_sdd_mandate_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**RegisterSddMandateInput**](RegisterSddMandateInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**RegisterSddMandateOutput**](RegisterSddMandateOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_sdd_mandate_unregister_put**
> UnregisterSddMandateOutput money_ins_sdd_mandate_unregister_put(mandatid, parameters, authorization, psu_ip_address, opts)

Deactivate a mandate

This allows you to deactivate a mandate

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

mandatid = 789 # Integer | 

parameters = SwaggerClient::UnregisterSddMandateInput.new # UnregisterSddMandateInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Deactivate a mandate
  result = api_instance.money_ins_sdd_mandate_unregister_put(mandatid, parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_sdd_mandate_unregister_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mandatid** | **Integer**|  | 
 **parameters** | [**UnregisterSddMandateInput**](UnregisterSddMandateInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**UnregisterSddMandateOutput**](UnregisterSddMandateOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_sofort_init_post**
> MoneyInSofortInitOutput money_ins_sofort_init_post(parameters, authorization, psu_ip_address, opts)

Initialize Sofort payment

You will need 2 integration points on your code:  <ul><li>One call to DIRECTKIT to init Sofort payment to credit the payment account</li><li>One redirection from your WHITE BRAND web site to the return URL by Sofort</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyInSofortInitInput.new # MoneyInSofortInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Initialize Sofort payment
  result = api_instance.money_ins_sofort_init_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_sofort_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyInSofortInitInput**](MoneyInSofortInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInSofortInitOutput**](MoneyInSofortInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_trustly_init_post**
> MoneyInTrustlyInitOutput money_ins_trustly_init_post(parameters, authorization, psu_ip_address, opts)

Initialize Trustly payment

Trustly is a Swedish payment method used in 29 European countries. With Trustly, buy and pay from your bank account.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

parameters = SwaggerClient::MoneyInTrustlyInitInput.new # MoneyInTrustlyInitInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Initialize Trustly payment
  result = api_instance.money_ins_trustly_init_post(parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_trustly_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**MoneyInTrustlyInitInput**](MoneyInTrustlyInitInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInTrustlyInitOutput**](MoneyInTrustlyInitOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **money_ins_validate_put**
> MoneyInValidateOutput money_ins_validate_put(transactionid, parameters, authorization, psu_ip_address, opts)

Validation of a Money-In (deffered payment only)

This method is only used in differed/pre-authorization mode. You can only validate a pre-authrorized payment once.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MoneyInsApi.new

transactionid = 789 # Integer | 

parameters = SwaggerClient::MoneyInValidateInput.new # MoneyInValidateInput | 

authorization = 'authorization_example' # String | Authorization bearer (OAuth 2)

psu_ip_address = 'psu_ip_address_example' # String | IP address of the final client (PSU).

opts = { 
  psu_accept_language: 'psu_accept_language_example', # String | Response language accepted by final client (PSU). English by default
  psu_user_agent: 'psu_user_agent_example' # String | User-agent of the final client (PSU).
}

begin
  #Validation of a Money-In (deffered payment only)
  result = api_instance.money_ins_validate_put(transactionid, parameters, authorization, psu_ip_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MoneyInsApi->money_ins_validate_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionid** | **Integer**|  | 
 **parameters** | [**MoneyInValidateInput**](MoneyInValidateInput.md)|  | 
 **authorization** | **String**| Authorization bearer (OAuth 2) | 
 **psu_ip_address** | **String**| IP address of the final client (PSU). | 
 **psu_accept_language** | **String**| Response language accepted by final client (PSU). English by default | [optional] 
 **psu_user_agent** | **String**| User-agent of the final client (PSU). | [optional] 

### Return type

[**MoneyInValidateOutput**](MoneyInValidateOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



