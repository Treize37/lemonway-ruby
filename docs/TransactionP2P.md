# LemonWayClient::TransactionP2P

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Debited account | [optional] 
**receiver_account_id** | **String** | Credited account | [optional] 
**debit_amount** | **Integer** | Debited amount  Amounts are given as integer numbers in cents. | [optional] 
**credit_amount** | **Integer** | Credited amount  Amounts are given as integer numbers in cents. | [optional] 
**private_data** | [**PrivateData**](PrivateData.md) | Data if you associated a privateData to the payment when you called SendPayment. | [optional] 
**scheduled_date** | **String** | Request Date for a payment or Payment Date. UTC unix timestamp. | [optional] 
**is_fee** | **BOOLEAN** | returned 1 for P2P commission transaction | [optional] 
**fee_reference** | **Integer** | original transaction id | [optional] 
**id** | **Integer** | Transaction ID | [optional] 
**date** | **Integer** | Date of canceled MONEY-IN, UTC Unix timestamp. | [optional] 
**commission_amount** | **Integer** | WHITE BRAND fee.  Amounts are given as integer numbers in cents. | [optional] 
**comment** | **String** | Comment | [optional] 
**status** | **Integer** | Non used in WHITE BRAND KIT | [optional] 
**lemon_way_commission** | [**LemonWayCommission**](LemonWayCommission.md) |  | [optional] 


