# SwaggerClient::CreatePaymentFormInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**opt_id** | **String** | Optional identity of the payment form. You shouldn&#39;t use special character here. | [optional] 
**wallet_payer** | **String** | Payer Wallet. If this field is filled then the money reaches this wallet before arriving at the beneficiary wallet (via a transfer wallet to wallet).  Don&#39;t put the wallet \&quot;sc\&quot; here, it won&#39;t work. You cannot debit the wallet \&quot;sc\&quot; with a credit card. | [optional] 
**wallet_receiver** | **String** | Beneficiary Wallet. If this field is not filled then the end-user must to fill its value on the payment form.   **We recommend you to always fill it instead of your end-user.**  Don&#39;t put the wallet \&quot;sc\&quot; here, it won&#39;t work. You cannot credit the wallet \&quot;sc\&quot; with a credit card. | [optional] 
**total_amount** | **Integer** | Amount or a range of the amount to be debited.  1. If this field is configured with an interval (eg, 15.30-500.26) then the final customer will have to enter an appropriate amount in the form.  2. If this field is not filled then the end-user can enter any amount to the form.  3. If this field is filled with a precise value (eg 15.60), then the end-user has no choice in the amount field of the form.  Amounts are given as integer numbers in cents. | [optional] 
**commission_amount** | **Integer** | WHITE BRAND fee.  Amounts are given as integer numbers in cents. | [optional] 
**comment** | **String** | Comment regarding the transaction. | [optional] 
**return_url** | **String** | Url redirection after the payment procedure is successfully finished. | [optional] 
**cancel_url** | **String** | Url redirection after the payment procedure is cancelled. | [optional] 
**error_url** | **String** | Url redirection after the payment procedure is failed. | [optional] 
**first_name_payer** | **String** | Payer&#39;s first name.   If this field is not filled then the end-user have to fill it in the payment form. | [optional] 
**last_name_payer** | **String** | Payer&#39;s last name.  If this field is not filled then the end-user have to fill it in the payment form. | [optional] 
**email_payer** | **String** | Payer&#39;s email.  If this field is not filled then the end-user have to fill it in the payment form. | [optional] 
**style** | **String** | Link to a custom CSS stylesheet.   The stylesheet should be publicly accessible via **https**. | [optional] 
**atos_style** | **String** | **Atosv1 only**: Link to a custom Atos CSS stylesheet.  The stylesheet should be publicly accessible via **https**. | [optional] 
**notif_url** | **String** | At the end of the payment procedure, an Http POST message containing the payment status (PAID, ERROR, CANCEL) is sent to this address.   It is possible that the same notification might be sent several times. | [optional] 
**options** | **String** | Reserved for future version. | [optional] 


