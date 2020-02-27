# SwaggerClient::MoneyInIDealInitInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**return_url** | **String** | WHITE BRAND return URL, called to terminate the operation and on which the callback will be sent, with data in POST parameters.  This url must contain a unique ID so you know which operation is related to the return. | 
**issuer_id** | **String** | ID of iDEAL Issuer resource:  1. 21 for Rabobank.  2. 31 for ABN Amro.  3. 721 for ING.  4. 751 for SNS Bank.  5. 161 for Van Lanschot Bankiers.  6. 511 for Triodos Bank.  7. 761 for ASN Bank.  8. 771 for RegioBank.  9. 801 for Knab Bank.  10. BUNQNL2A pour Bunk Bank. | 
**account_id** | **String** | Payment account ID to credit. | 
**total_amount** | **Integer** | Amount to debit.  Amounts are given as integer numbers in cents. | [optional] 
**commission_amount** | **Integer** | WHITE BRAND fee.  Amounts are given as integer numbers in cents. | [optional] 
**comment** | **String** | Comment regarding the transaction. | [optional] 
**auto_commission** | **BOOLEAN** | If true:  1. [amountCom] will be ignored and will be replaced with LEMON WAY&#39;s fee.  2. The WHITE BRAND will not receive any fee. | [optional] 


