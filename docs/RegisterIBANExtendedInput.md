# SwaggerClient::RegisterIBANExtendedInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**wallet** | **String** | Payment account ID. | 
**account_type** | **Integer** | Account type.  0 &#x3D; Other.  1 &#x3D; IBAN.  2 &#x3D; BBAN/RIB. | 
**holder_name** | **String** | Account holder name. | 
**account_number** | **String** | Account number. Its format depends on the account type. | 
**holder_country** | **String** | 2 chars ISO country code. | 
**bic_code** | **String** | BIC/SWIFT code.  If not empty, it will be used to identify the beneficiary bank. This is the best way to identify the bank. | 
**bank_name** | **String** | Name of the Bank (and the address). Only use this if you don&#39;t have the BIC/SWIFT code.  If both this and BIC/SWIFT code are filled, the BIC/SWIFT code will be used unless something is wrong with it.  If you don&#39;t know the BIC/SWIFT code of the bank, you can try to give the bank ID.   The bank ID format will be as follow:  1. AU + 6c num (Australia).  2. CC + 9c num (Canada).  3. CH + 6c num (CHIPS USA).  4. CP + 4c num (CHIPS USA).  5. FW + 9c num (code ABA Fedwire USA).  6. HK + 3c num (Hong Kong).  7. IN +11c alpha-num (India).  8. NZ + 6c num (New Zeland). | [optional] 
**bank_country** | **String** | 2 chars ISO country code. | 
**intermediary_bic_code** | **String** | BIC/SWIFT code of the intermediary bank, if there is an intermediary bank. | [optional] 
**intermediary_bank_name** | **String** | Name of intermediary bank. Only fill this if BIC/SWIFT code of the intermediary bank is empty. | [optional] 
**intermediary_bank_country** | **String** | 2 chars ISO country code. | [optional] 
**comment** | **String** | Reason for new IBAN if another IBAN is already linked to the wallet. | [optional] 


