# LemonWayClient::MoneyIn3DConfirmInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_pre_auth** | **BOOLEAN** | **Atos only**  Indicates if the request is delayed and will require validation.  1. If true, payment will only be pre-authorized, you will have to call MoneyInValidate within 6 days or [delayedDays] in order to request the card debit.  2. If empty, the default behavior is no delay and no validation necessary (unless stated otherwise in your contract).  3. If false, the card will be debited without delay and without validation necessary. | [optional] 
**delayed_days** | **Integer** | **Atos only**  if isPreAuth is not true, this will be ignored.   Please use with caution, if delayedDays &amp;gt; 6, it is possible that the payment will be denied when you try to validate it, because a new authorization will be made. | [optional] 
**card** | [**CardInfo**](CardInfo.md) | Card informations. | [optional] 
**md** | **String** | MD Data returned by 3D Secure site. | [optional] 
**pares** | **String** | Pares Data returned by 3DS authentication web site. | [optional] 
**special_config** | **String** | Leave empty. | [optional] 


