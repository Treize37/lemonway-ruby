# SwaggerClient::RegisterIndividualAccountInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | Payment account ID that you use to identify the customer.Choose your unique number.&lt;br /&gt;  NOTE : If you plan to credit payments accounts  by fund transfer, please use short alphanumeric payment account identifiers (max 20 char.).   Your customers will have to write their payment account identifier in the transfer label/comment, a label of more that 20 characters could be cut when passing the the banking system. | 
**email** | **String** | Unique Email. | 
**title** | **String** | CLIENT title. | [optional] 
**first_name** | **String** | CLIENT first name. | 
**last_name** | **String** | CLIENT last name. | 
**adresse** | [**Address**](Address.md) | Client adresse | [optional] 
**birth** | [**Birth**](Birth.md) | Client Birth informations | [optional] 
**nationality** | **String** | Nationality of the client, using ISO 3166-1 alpha-3 format.  Please separate multiple nationalities with a comma. | 
**phone_number** | **String** | Phone number with MSISDN format: international number with country code without \&quot;00\&quot; neither \&quot;+\&quot;. | [optional] 
**mobile_number** | **String** | Mobile phone number with MSISDN format: international number with country code without \&quot;00\&quot; neither \&quot;+\&quot;.   This will be used by default when eletronically signing documents. | [optional] 
**is_debtor** | **BOOLEAN** | For crowdfunding/loan platforms, indicates if the wallet is created for a debtor. | [optional] 
**payer_or_beneficiary** | **Integer** | Indicates if the payment account is created for a payer or a beneficiary:  1. Empty: unknown status (default).  2. 1: Payer.  3. 2: Beneficiary. | 
**is_one_time_customer_account** | **BOOLEAN** | Indicates if the payment account is for a one-time customer.   If yes, the payment account will be created with status 14, allowing only one payment.   The maximum amount will be defined with Lemon Way. | [optional] 
**is_technical_account** | **BOOLEAN** | **This option is available depending on your contract.**  True, in case this option is enabled in your contract.  Otherwise it will be considered a client wallet. | [optional] 


