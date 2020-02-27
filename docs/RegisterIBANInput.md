# SwaggerClient::RegisterIBANInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | Payment account ID. | 
**holder** | **String** | IBAN owner: first name and last name, or enterprize name. | 
**bic** | **String** | BIC/SWIFT code. Not mandatory.  The correct format is : [6 letters] + [2 numbers or letters] + [0 or 3 numbers or letters]. | [optional] 
**iban** | **String** | IBAN. | 
**domiciliation1** | **String** | First line of domiciliation.  Generally, the name of the bank branch.  Can be left empty if the IBAN is from France or Monaco (starts with FR or MC). | [optional] 
**domiciliation2** | **String** | Second line of domiciliation.  Generally, the street of the bank branch.  Can be left empty if the IBAN is from France or Monaco (starts with FR or MC). | [optional] 
**comment** | **String** | Reason for new IBAN if another IBAN is already linked to the wallet. | [optional] 


