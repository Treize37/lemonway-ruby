# LemonWayClient::MoneyIn3DInitInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**card** | [**CardInfo**](CardInfo.md) | Card informations. | 
**return_url** | **String** | URL of return of the 3D Secure web site. Your CLIENT will be redirected on this URL, which should be your WHITE BRAND web site URL. | [optional] 
**reference** | **String** | Unique ID of the call, generated by your WHITE BRAND server. This ID can be used as a search field when looking for operation details | 
**account_id** | **String** | Payment account ID to credit. | 
**total_amount** | **Integer** | Amount to debit.  Amounts are given as integer numbers in cents. | [optional] 
**commission_amount** | **Integer** | WHITE BRAND fee.  Amounts are given as integer numbers in cents. | [optional] 
**comment** | **String** | Comment regarding the transaction. | [optional] 
**auto_commission** | **BOOLEAN** | If true:  1. [amountCom] will be ignored and will be replaced with LEMON WAY&#39;s fee.  2. The WHITE BRAND will not receive any fee. | [optional] 

