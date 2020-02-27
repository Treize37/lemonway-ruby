# LemonWayClient::TransactionIn

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**receiver_account_id** | **String** | Credited account | [optional] 
**credit_amount** | **Integer** | Credited amount  Amounts are given as integer numbers in cents. | [optional] 
**scheduled_date** | **String** |  | [optional] 
**scheduled_number** | **String** |  | [optional] 
**method** | **Integer** |  | [optional] 
**masked_label** | **String** |  | [optional] 
**psp** | [**PSP**](PSP.md) |  | [optional] 
**card** | [**Card**](Card.md) |  | [optional] 
**bank_status** | **String** |  | [optional] 
**refund_amount** | **Float** |  | [optional] 
**bank_reference** | **String** | Bank reference | [optional] 
**id** | **Integer** | Transaction ID | [optional] 
**date** | **Integer** | Date of canceled MONEY-IN, UTC Unix timestamp. | [optional] 
**commission_amount** | **Integer** | WHITE BRAND fee.  Amounts are given as integer numbers in cents. | [optional] 
**comment** | **String** | Comment | [optional] 
**status** | **Integer** | Non used in WHITE BRAND KIT | [optional] 
**lemon_way_commission** | [**LemonWayCommission**](LemonWayCommission.md) |  | [optional] 


