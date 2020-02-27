# SwaggerClient::TransactionOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Debited account | [optional] 
**debit_amount** | **Integer** | Debited amount.  Amounts are given as integer numbers in cents. | [optional] 
**iban_id** | **Integer** | Iban Id | [optional] 
**masked_label** | **String** |  | [optional] 
**bank_status** | **String** |  | [optional] 
**psp** | [**PSP**](PSP.md) |  | [optional] 
**origin_id** | **Integer** | ID of the money-in that caused the chargeback | [optional] 
**id** | **Integer** | Transaction ID | [optional] 
**date** | **Integer** | Date of canceled MONEY-IN, UTC Unix timestamp. | [optional] 
**commission_amount** | **Integer** | WHITE BRAND fee.  Amounts are given as integer numbers in cents. | [optional] 
**comment** | **String** | Comment | [optional] 
**status** | **Integer** | Non used in WHITE BRAND KIT | [optional] 
**lemon_way_commission** | [**LemonWayCommission**](LemonWayCommission.md) |  | [optional] 


