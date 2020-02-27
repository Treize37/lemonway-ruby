# SwaggerClient::UpdateLegalAccountDetailsInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company** | [**Company**](Company.md) | Company informations | 
**email** | **String** | New Email. Unique as usual. | [optional] 
**title** | **String** | CLIENT title. | 
**first_name** | **String** | CLIENT first name. | [optional] 
**last_name** | **String** | CLIENT last name. | [optional] 
**adresse** | [**Address**](Address.md) | Client adresse | [optional] 
**birth** | [**Birth**](Birth.md) | ClientBirth informations | [optional] 
**phone_number** | **String** | MSISDN phone number. | [optional] 
**mobile_number** | **String** | Mobile phone number with MSISDN format: international number with country code without \&quot;00\&quot; neither \&quot;+\&quot;.&lt;br /&gt;   This will be used by default when eletronically signing documents. | [optional] 
**is_debtor** | **BOOLEAN** | For crowdfunding/loan platforms, indicates if the wallet is created for a debtor. | [optional] 
**nationality** | **String** | Nationality of the client, using ISO 3166-1 alpha-3 format.  Please separate multiple nationalities with a comma. | [optional] 
**payer_or_beneficiary** | **Integer** | Indicates if the payment account is created for a payer or a beneficiary:  1. Empty: unknown status (default).  2. 1: Payer.  3. 2: Beneficiary. | [optional] 


