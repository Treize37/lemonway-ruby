# SwaggerClient::MoneyInChequeInitInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transfer_id** | **String** | Leave Empty. | [optional] 
**partner** | **String** | Leave empty. | [optional] 
**cheque_type** | **Integer** | Cheque payment (by default) or Pagaré.  15 &#x3D; Cheque payment.  23 &#x3D; Pagaré. | [optional] 
**account_id** | **String** | Payment account ID to credit. | 
**total_amount** | **Integer** | Amount to debit.  Amounts are given as integer numbers in cents. | [optional] 
**commission_amount** | **Integer** | WHITE BRAND fee.  Amounts are given as integer numbers in cents. | [optional] 
**comment** | **String** | Comment regarding the transaction. | [optional] 
**auto_commission** | **BOOLEAN** | If true:  1. [amountCom] will be ignored and will be replaced with LEMON WAY&#39;s fee.  2. The WHITE BRAND will not receive any fee. | [optional] 


