# SwaggerClient::RegisterSddMandateInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**wallet** | **String** | Payment account ID. | 
**holder** | **String** | IBAN holder. | 
**bic** | **String** | BIC code (SWIFT). | 
**iban** | **String** | IBAN. | 
**is_b2_b** | **BOOLEAN** | Indicates if the mandate is a SEPA business to business direct debit. | [optional] 
**is_recurring** | **BOOLEAN** | 1. If true, mandate is for recurring payments.  2. If false, mandate is for one payment only. | 
**street** | **String** | CLIENT number and street.  Mandatory if you plan to electronically sign the mandate. | [optional] 
**post_code** | **String** | CLIENT post code/ZIP.  Mandatory if you plan to electronically sign the mandate. | [optional] 
**city** | **String** | CLIENT city.  Mandatory if you plan to electronically sign the mandate. | [optional] 
**country** | **String** | CLIENT country.  Mandatory if you plan to electronically sign the mandate. | [optional] 
**mandate_language** | **String** | Language of the automatically generated mandate(for electronic signature).  Currently, the available languages are: fr, en, de, es, it.  If you need another, please contact us.   \&quot;fr\&quot; is used by default if no language is requested. | [optional] 
**rum** | **String** | Unique mandate reference number (UMR) | [optional] 


