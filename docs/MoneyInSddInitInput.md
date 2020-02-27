# LemonWayClient::MoneyInSddInitInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sdd_mandate_id** | **Integer** | ID of the mandate. | 
**collection_date** | **String** | Debit date of the bank account, must be later than the default date.  Leave empty in order to use the default date: current date + 1 working days before 10:30 AM or current date + 2 working days after. | [optional] 
**account_id** | **String** | Payment account ID to credit. | 
**total_amount** | **Integer** | Amount to debit.  Amounts are given as integer numbers in cents. | [optional] 
**commission_amount** | **Integer** | WHITE BRAND fee.  Amounts are given as integer numbers in cents. | [optional] 
**comment** | **String** | Comment regarding the transaction. | [optional] 
**auto_commission** | **BOOLEAN** | If true:  1. [amountCom] will be ignored and will be replaced with LEMON WAY&#39;s fee.  2. The WHITE BRAND will not receive any fee. | [optional] 


