# LemonWayClient::SendPaymentInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**debit_account_id** | **String** | Wallet ID to be debited. | 
**credit_account_id** | **String** | Wallet ID to credit. | 
**amount** | **Integer** | Payment amount. | [optional] 
**comment** | **String** | Comment for the payment. | [optional] 
**scheduled_date** | **String** | If scheduledDate is set, the following rules will apply:  1. ScheduledDate cannot be equal to the current date, Paris time.  2. The payment will be inserted but not executed, the status will be pending and necessary checks like user balance or user status will not be checked.  3. At 1am, Paris time, on [scheduledDate], the checks will be performed and the payment will be finalized.  **this feature is available only for some specific white label, contact commercial service for more information.** | [optional] 
**private_data** | [**PrivateData**](PrivateData.md) | Data with multiple fields that you can associate to a payment and that you can search with GetPaymentDetails. | [optional] 
**origin_transaction_id** | **Integer** | Origin transaction identification. | [optional] 
**reference** | **String** |  | [optional] 


