# SwaggerClient::ResultsManagementApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_result**](ResultsManagementApi.md#delete_result) | **DELETE** /results/{sourcedId} | The REST delete request message for the deleteResult() API call.
[**get_result**](ResultsManagementApi.md#get_result) | **GET** /results/{sourcedId} | The REST read request message for the getResult() API call.
[**get_results**](ResultsManagementApi.md#get_results) | **GET** /results | The REST read request message for the getResults() API call.
[**get_results_for_class**](ResultsManagementApi.md#get_results_for_class) | **GET** /classes/{classSourcedId}/results | The REST read request message for the getResultsForClass() API call.
[**get_results_for_line_item_for_class**](ResultsManagementApi.md#get_results_for_line_item_for_class) | **GET** /classes/{classSourcedId}/lineItems/{lineItemSourcedId}/results | The REST read request message for the getResultsForLineItemForClass() API call.
[**get_results_for_student_for_class**](ResultsManagementApi.md#get_results_for_student_for_class) | **GET** /classes/{classSourcedId}/students/{studentSourcedId}/results | The REST read request message for the getResultsForStudentForClass() API call.
[**put_result**](ResultsManagementApi.md#put_result) | **PUT** /results/{sourcedId} | The REST create request message for the putResult() API call.

# **delete_result**
> delete_result(sourced_id)

The REST delete request message for the deleteResult() API call.

...not supplied...

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ResultsManagementApi.new
sourced_id = 'sourced_id_example' # String | ...tbd...


begin
  #The REST delete request message for the deleteResult() API call.
  api_instance.delete_result(sourced_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResultsManagementApi->delete_result: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourced_id** | **String**| ...tbd... | 

### Return type

nil (empty response body)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_result**
> SingleResultType get_result(sourced_id)

The REST read request message for the getResult() API call.

...not supplied...

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ResultsManagementApi.new
sourced_id = 'sourced_id_example' # String | ...tbd...


begin
  #The REST read request message for the getResult() API call.
  result = api_instance.get_result(sourced_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResultsManagementApi->get_result: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourced_id** | **String**| ...tbd... | 

### Return type

[**SingleResultType**](SingleResultType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_results**
> ResultsType get_results(opts)

The REST read request message for the getResults() API call.

...not supplied...

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ResultsManagementApi.new
opts = { 
  limit: 100, # Integer | To define the download segmentation value i.e. the maximum number of records to be contained in the response.
  offset: 0, # Integer | The number of the first record to be supplied in the segmented response message.
  continuation_token: 'continuation_token_example', # String | Allows the client to resume retrieving results from where the previous page left off
  sort: 'sort_example', # String | Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
  order_by: 'order_by_example', # String | The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
  filter: 'filter_example', # String | The filtering rules to be applied when identifying the records to be supplied in the response message.
  fields: ['fields_example'] # Array<String> | To identify the range of fields that should be supplied in the response message.
}

begin
  #The REST read request message for the getResults() API call.
  result = api_instance.get_results(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResultsManagementApi->get_results: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| To define the download segmentation value i.e. the maximum number of records to be contained in the response. | [optional] [default to 100]
 **offset** | **Integer**| The number of the first record to be supplied in the segmented response message. | [optional] [default to 0]
 **continuation_token** | **String**| Allows the client to resume retrieving results from where the previous page left off | [optional] 
 **sort** | **String**| Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter. | [optional] 
 **order_by** | **String**| The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc). | [optional] 
 **filter** | **String**| The filtering rules to be applied when identifying the records to be supplied in the response message. | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| To identify the range of fields that should be supplied in the response message. | [optional] 

### Return type

[**ResultsType**](ResultsType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_results_for_class**
> ResultsType get_results_for_class(class_sourced_id, opts)

The REST read request message for the getResultsForClass() API call.

...not supplied...

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ResultsManagementApi.new
class_sourced_id = 'class_sourced_id_example' # String | ...tbd...
opts = { 
  limit: 100, # Integer | To define the download segmentation value i.e. the maximum number of records to be contained in the response.
  offset: 0, # Integer | The number of the first record to be supplied in the segmented response message.
  continuation_token: 'continuation_token_example', # String | Allows the client to resume retrieving results from where the previous page left off
  sort: 'sort_example', # String | Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
  order_by: 'order_by_example', # String | The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
  filter: 'filter_example', # String | The filtering rules to be applied when identifying the records to be supplied in the response message.
  fields: ['fields_example'] # Array<String> | To identify the range of fields that should be supplied in the response message.
}

begin
  #The REST read request message for the getResultsForClass() API call.
  result = api_instance.get_results_for_class(class_sourced_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResultsManagementApi->get_results_for_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_sourced_id** | **String**| ...tbd... | 
 **limit** | **Integer**| To define the download segmentation value i.e. the maximum number of records to be contained in the response. | [optional] [default to 100]
 **offset** | **Integer**| The number of the first record to be supplied in the segmented response message. | [optional] [default to 0]
 **continuation_token** | **String**| Allows the client to resume retrieving results from where the previous page left off | [optional] 
 **sort** | **String**| Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter. | [optional] 
 **order_by** | **String**| The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc). | [optional] 
 **filter** | **String**| The filtering rules to be applied when identifying the records to be supplied in the response message. | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| To identify the range of fields that should be supplied in the response message. | [optional] 

### Return type

[**ResultsType**](ResultsType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_results_for_line_item_for_class**
> ResultsType get_results_for_line_item_for_class(class_sourced_id, line_item_sourced_id, opts)

The REST read request message for the getResultsForLineItemForClass() API call.

...not supplied...

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ResultsManagementApi.new
class_sourced_id = 'class_sourced_id_example' # String | ...tbd...
line_item_sourced_id = 'line_item_sourced_id_example' # String | ...tbd...
opts = { 
  limit: 100, # Integer | To define the download segmentation value i.e. the maximum number of records to be contained in the response.
  offset: 0, # Integer | The number of the first record to be supplied in the segmented response message.
  continuation_token: 'continuation_token_example', # String | Allows the client to resume retrieving results from where the previous page left off
  sort: 'sort_example', # String | Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
  order_by: 'order_by_example', # String | The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
  filter: 'filter_example', # String | The filtering rules to be applied when identifying the records to be supplied in the response message.
  fields: ['fields_example'] # Array<String> | To identify the range of fields that should be supplied in the response message.
}

begin
  #The REST read request message for the getResultsForLineItemForClass() API call.
  result = api_instance.get_results_for_line_item_for_class(class_sourced_id, line_item_sourced_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResultsManagementApi->get_results_for_line_item_for_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_sourced_id** | **String**| ...tbd... | 
 **line_item_sourced_id** | **String**| ...tbd... | 
 **limit** | **Integer**| To define the download segmentation value i.e. the maximum number of records to be contained in the response. | [optional] [default to 100]
 **offset** | **Integer**| The number of the first record to be supplied in the segmented response message. | [optional] [default to 0]
 **continuation_token** | **String**| Allows the client to resume retrieving results from where the previous page left off | [optional] 
 **sort** | **String**| Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter. | [optional] 
 **order_by** | **String**| The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc). | [optional] 
 **filter** | **String**| The filtering rules to be applied when identifying the records to be supplied in the response message. | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| To identify the range of fields that should be supplied in the response message. | [optional] 

### Return type

[**ResultsType**](ResultsType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_results_for_student_for_class**
> ResultsType get_results_for_student_for_class(class_sourced_id, student_sourced_id, opts)

The REST read request message for the getResultsForStudentForClass() API call.

...not supplied...

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ResultsManagementApi.new
class_sourced_id = 'class_sourced_id_example' # String | ...tbd...
student_sourced_id = 'student_sourced_id_example' # String | ...tbd...
opts = { 
  limit: 100, # Integer | To define the download segmentation value i.e. the maximum number of records to be contained in the response.
  offset: 0, # Integer | The number of the first record to be supplied in the segmented response message.
  continuation_token: 'continuation_token_example', # String | Allows the client to resume retrieving results from where the previous page left off
  sort: 'sort_example', # String | Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
  order_by: 'order_by_example', # String | The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
  filter: 'filter_example', # String | The filtering rules to be applied when identifying the records to be supplied in the response message.
  fields: ['fields_example'] # Array<String> | To identify the range of fields that should be supplied in the response message.
}

begin
  #The REST read request message for the getResultsForStudentForClass() API call.
  result = api_instance.get_results_for_student_for_class(class_sourced_id, student_sourced_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResultsManagementApi->get_results_for_student_for_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_sourced_id** | **String**| ...tbd... | 
 **student_sourced_id** | **String**| ...tbd... | 
 **limit** | **Integer**| To define the download segmentation value i.e. the maximum number of records to be contained in the response. | [optional] [default to 100]
 **offset** | **Integer**| The number of the first record to be supplied in the segmented response message. | [optional] [default to 0]
 **continuation_token** | **String**| Allows the client to resume retrieving results from where the previous page left off | [optional] 
 **sort** | **String**| Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter. | [optional] 
 **order_by** | **String**| The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc). | [optional] 
 **filter** | **String**| The filtering rules to be applied when identifying the records to be supplied in the response message. | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| To identify the range of fields that should be supplied in the response message. | [optional] 

### Return type

[**ResultsType**](ResultsType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_result**
> put_result(bodysourced_id)

The REST create request message for the putResult() API call.

...not supplied...

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ResultsManagementApi.new
body = SwaggerClient::SingleResultType.new # SingleResultType | ...tbd...
sourced_id = 'sourced_id_example' # String | ...tbd...


begin
  #The REST create request message for the putResult() API call.
  api_instance.put_result(bodysourced_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResultsManagementApi->put_result: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SingleResultType**](SingleResultType.md)| ...tbd... | 
 **sourced_id** | **String**| ...tbd... | 

### Return type

nil (empty response body)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



