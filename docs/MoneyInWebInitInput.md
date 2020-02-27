# LemonWayClient::MoneyInWebInitInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**return_url** | **String** | WHITE BRAND back URL, called by WEBKIT to terminate the operation. | 
**error_url** | **String** | WHITE BRAND return URL, called by WEBKIT in case of an error. | 
**cancel_url** | **String** | WHITE BRAND return URL, called by WEBKIT in case of a cancellation. | 
**register_card** | **BOOLEAN** | Save the card and returns an ID for future payments. Just like the RegisterCard method, you will then be able to debit the card by calling MoneyInWithCardId. | [optional] 
**capture_delayed_days** | **Integer** | Indicate the number of days of the deferred payment. Between 0 and 6 days to have a guaranteed payment.   Only usable with isPreAuth &#x3D; 1.  Only available for Transactpro, Atos v2, Payzen, Monetico. | [optional] 
**label** | **String** | Indicate the name of the shop on the payment page.  Only available for Payzen. | [optional] 
**money_in_nature** | **Integer** | Indicate the nature of activity for this moneyIn :  1 : activity 1  2 : activity 2  0 &#x3D; Activité 1.  1 &#x3D; Activité 2. | [optional] 
**reference** | **String** | Unique ID of the call, generated by your WHITE BRAND server. This ID can be used as a search field when looking for operation details | 
**account_id** | **String** | Payment account ID to credit. | 
**total_amount** | **Integer** | Amount to debit.  Amounts are given as integer numbers in cents. | [optional] 
**commission_amount** | **Integer** | WHITE BRAND fee.  Amounts are given as integer numbers in cents. | [optional] 
**comment** | **String** | Comment regarding the transaction. | [optional] 
**auto_commission** | **BOOLEAN** | If true:  1. [amountCom] will be ignored and will be replaced with LEMON WAY&#39;s fee.  2. The WHITE BRAND will not receive any fee. | [optional] 

