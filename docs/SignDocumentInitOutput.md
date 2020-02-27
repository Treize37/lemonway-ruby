# LemonWayClient::SignDocumentInitOutput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sign_document** | **String** | Payment token to use as GET parameter when redirecting your user to the WEBKIT.  Note: the token can be used as long as the mandate is not successfully signed,   so even if the user comes back to your error page (if the user cancelled for example),   you can still submit the same token to the WEBKIT. | [optional] 
**error** | [**Error**](Error.md) |  | [optional] 


