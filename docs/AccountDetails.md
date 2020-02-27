# LemonWayClient::AccountDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Payment Account ID | [optional] 
**internal_id** | **Integer** | Internal ID given by LEMON WAY (ID displayed on the BACKOFFICE) | [optional] 
**client_title** | **String** | CLIENT title. | [optional] 
**firstname** | **String** | Holder&#39;s First Name | [optional] 
**lastname** | **String** | Holder&#39;s Last Name | [optional] 
**balance** | **Integer** | Payment account balance amount | [optional] 
**email** | **String** | Email | [optional] 
**status** | **Integer** | Payment account status. | [optional] 
**isblocked** | **BOOLEAN** | Indicates if wallet is blocked or not:  0: not blocked  1: blocked | [optional] 
**account_type** | **Integer** |  | [optional] 
**company** | [**Company**](Company.md) | Company informations | [optional] 
**adresse** | [**Address**](Address.md) | Client adresse | [optional] 
**birth** | [**Birth**](Birth.md) | Client Birth informations | [optional] 
**nationality** | **String** | Nationality | [optional] 
**phone_number** | **String** | Phone number with MSISDN format. | [optional] 
**mobile_number** | **String** | Mobile phone number with MSISDN format. | [optional] 
**is_debtor** | **BOOLEAN** | For crowdfunding/loan platforms, indicates if the wallet is created for a debtor   0 or empty: no  1: yes | [optional] 
**payer_or_beneficiary** | **Integer** | Indicates if the payment account is created for a payer or a beneficiary:  1. Empty: unknown status (default).  2. 1: Payer.  3. 2: Beneficiary. | [optional] 


