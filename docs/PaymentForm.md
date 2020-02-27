# SwaggerClient::PaymentForm

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**wallet_ip** | **String** |  | [optional] 
**wallet_ua** | **String** |  | [optional] 
**amount_tot_range** | **String** |  | [optional] 
**amount_com** | **String** |  | [optional] 
**language** | **String** |  | [optional] 
**version** | **String** |  | [optional] 
**style** | **String** |  | [optional] 
**atos_style** | **String** | Atosv1 only: Link to a custom Atos CSS stylesheet.  The stylesheet should be publicly accessible via https | [optional] 
**notif_url** | **String** |  | [optional] 
**options** | **String** | Reserve for future version | [optional] 
**active** | **BOOLEAN** |  | [optional] 
**raison_sociale** | **String** |  | [optional] 
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


