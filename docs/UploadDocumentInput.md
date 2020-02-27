# LemonWayClient::UploadDocumentInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the document. | 
**type** | **Integer** | Type of document.  0 &#x3D; ID Card.  1 &#x3D; Proof of address.  2 &#x3D; Scan of a proof of IBAN.  3 &#x3D; Passport (European Union).  4 &#x3D; Passport (outside the European Union).  5 &#x3D; Residence permit.  7 &#x3D; Official company registration document (Kbis extract or equivalent).  11 &#x3D; Driver licence.  12 &#x3D; Status.  13 &#x3D; Selfie.  21 &#x3D; SDD mandat. | 
**buffer** | **String** | Byte array with the document. Encode in base 64 if necessary. | 
**sdd_mandate_id** | **Integer** | This allows you to upload mandate document you signed yourself (with your own signing partner) in order to validate a mandate ID you previously created with RegisterSddMandate. | [optional] 


