# SwaggerClient::SignDocumentInitInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mobile_number** | **String** | Required if no mobile number is already assigned to the payment account (using RegisterWallet or UpdateWalletDetails).  Format must be MSISDN : international number with country code, without \&quot;+\&quot; and \&quot;00\&quot;. | [optional] 
**type** | **Integer** | Use \&quot;21\&quot; for SDD mandate. | 
**return_url** | **String** | WHITE BRAND return URL, called by WEBKIT to terminate the operation. | 
**error_url** | **String** | WHITE BRAND return URL, called by WEBKIT in case of an error. | 


