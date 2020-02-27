# LemonWayClient::Iban

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Iban ID | [optional] 
**status** | **Integer** | Only status 5 allows the use of the IBAN for a money-out.  The list of types is available in annex. | [optional] 
**iban** | **String** | IBAN saved | [optional] 
**swift** | **String** | SWIFT BIC code associated to the IBAN | [optional] 
**holder** | **String** | Holder of the IBAN | [optional] 
**type** | **Integer** | Indicates it it&#39;s a merchant iban or a virtual client iban.  1: merchant iban  2: iban virtual client. | [optional] 


