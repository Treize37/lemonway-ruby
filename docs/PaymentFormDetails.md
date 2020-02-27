# SwaggerClient::PaymentFormDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parent_id** | **String** |  | [optional] 
**parent_comment** | **String** |  | [optional] 
**amount_tot** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**utc_date** | **Integer** | UTC Unix timestamp. | [optional] 
**created** | **Integer** | UTC Unix timestamp. | [optional] 
**id** | **String** | Payment Form ID | [optional] 
**opt_id** | **String** | Optional identity of the payment form. You shouldn&#39;t use special character here. | [optional] 
**account_payer** | **String** | payer account.  If this field is filled then the money reaches this wallet before arriving at the beneficiary wallet (via a transfer wallet to wallet)  note: Don&#39;t put the wallet \&quot;sc\&quot; here, it won&#39;t work. You cannot credit the wallet \&quot;sc\&quot; with a credit card. | [optional] 
**account_receiver** | **String** | Beneficiary Account.  if this field is not filled then the end-user must to fill its value on the payment form. We recommend you to always fill it instead of your end-user.  note: Don&#39;t put the wallet \&quot;sc\&quot; here, it won&#39;t work. You cannot credit the wallet \&quot;sc\&quot; with a credit card. | [optional] 
**comment** | **String** |  | [optional] 
**return_url** | **String** | Url redirection after the payment procedure is successfully finished | [optional] 
**cancel_url** | **String** | Url redirection after the payment procedure is cancelled | [optional] 
**error_url** | **String** | Url redirection after the payment procedure is failed | [optional] 
**first_name_payer** | **String** | Payer&#39;s first name.  If this field is not filled then the end-user have to fill it in the payment form. | [optional] 
**last_name_payer** | **String** | Payer&#39;s last name.  If this field is not filled then the end-user have to fill it in the payment form. | [optional] 
**email_payer** | **String** | Payer&#39;s email.  If this field is not filled then the end-user have to fill it in the payment form. | [optional] 


