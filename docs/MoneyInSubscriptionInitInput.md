# LemonWayClient::MoneyInSubscriptionInitInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subscription_id** | **String** | Subscription ID. | 
**count** | **Integer** | Number of operations to be performed on this subscription. | 
**account_id** | **String** | Payment account ID to credit. | 
**total_amount** | **Integer** | Amount to debit.  Amounts are given as integer numbers in cents. | [optional] 
**commission_amount** | **Integer** | WHITE BRAND fee.  Amounts are given as integer numbers in cents. | [optional] 
**comment** | **String** | Comment regarding the transaction. | [optional] 
**auto_commission** | **BOOLEAN** | If true:  1. [amountCom] will be ignored and will be replaced with LEMON WAY&#39;s fee.  2. The WHITE BRAND will not receive any fee. | [optional] 


