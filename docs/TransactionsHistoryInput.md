# SwaggerClient::TransactionsHistoryInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date** | **String** | UTC Unix timestamp.  In order to return transactions initialized after startDate.  If the payment account is \&quot;SC\&quot; then this value is mandatory. | [optional] 
**end_date** | **String** | UTC Unix timestamp.  In order to return transactions initialized before endDate.  If the payment account is \&quot;SC\&quot; then this value is mandatory and the time span cannot exceed 1 week. | [optional] 


