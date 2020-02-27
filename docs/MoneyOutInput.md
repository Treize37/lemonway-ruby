# SwaggerClient::MoneyOutInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | Payment account ID to be debited. | 
**iban_id** | **Integer** | IBAN ID.  If no IBAN is specified, the last verified(validated) IBAN will be used. | [optional] 
**total_amount** | **Integer** | Total amount to debit from the Wallet.  The CLIENT will receive on his bank account[totalAmount] minus[commissionAmount].  Amounts are given as integer numbers in cents | [optional] 
**commission_amount** | **Integer** | WHITE BRAND fee.  Amounts are given as integer numbers in cents | [optional] 
**comment** | **String** | Payment Comment. | [optional] 
**auto_commission** | **BOOLEAN** | This should be set to No (0) for most White Label.  If true:  1. [amountCom] will be ignored and will be replaced with Lemon Way&#39;s fee.  2. The white label will not receive any fee. | 


