# SwaggerClient::GradingPeriodsManagementApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_grading_period**](GradingPeriodsManagementApi.md#get_grading_period) | **GET** /gradingPeriods/{sourcedId} | The REST read request message for the getGradingPeriod() API call.
[**get_grading_periods**](GradingPeriodsManagementApi.md#get_grading_periods) | **GET** /gradingPeriods | The REST read request message for the getGradingPeriods() API call.
[**get_grading_periods_for_term**](GradingPeriodsManagementApi.md#get_grading_periods_for_term) | **GET** /terms/{termSourcedId}/gradingPeriods | The REST read request message for the getGradingPeriodsForTerm() API call.

# **get_grading_period**
> SingleAcademicSessionType get_grading_period(sourced_id)

The REST read request message for the getGradingPeriod() API call.

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

api_instance = SwaggerClient::GradingPeriodsManagementApi.new
sourced_id = 'sourced_id_example' # String | ...tbd...


begin
  #The REST read request message for the getGradingPeriod() API call.
  result = api_instance.get_grading_period(sourced_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GradingPeriodsManagementApi->get_grading_period: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourced_id** | **String**| ...tbd... | 

### Return type

[**SingleAcademicSessionType**](SingleAcademicSessionType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_grading_periods**
> MultipleAcademicSessionsType get_grading_periods(opts)

The REST read request message for the getGradingPeriods() API call.

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

api_instance = SwaggerClient::GradingPeriodsManagementApi.new
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
  #The REST read request message for the getGradingPeriods() API call.
  result = api_instance.get_grading_periods(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GradingPeriodsManagementApi->get_grading_periods: #{e}"
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

[**MultipleAcademicSessionsType**](MultipleAcademicSessionsType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_grading_periods_for_term**
> MultipleAcademicSessionsType get_grading_periods_for_term(term_sourced_id, opts)

The REST read request message for the getGradingPeriodsForTerm() API call.

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

api_instance = SwaggerClient::GradingPeriodsManagementApi.new
term_sourced_id = 'term_sourced_id_example' # String | ...tbd...
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
  #The REST read request message for the getGradingPeriodsForTerm() API call.
  result = api_instance.get_grading_periods_for_term(term_sourced_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GradingPeriodsManagementApi->get_grading_periods_for_term: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term_sourced_id** | **String**| ...tbd... | 
 **limit** | **Integer**| To define the download segmentation value i.e. the maximum number of records to be contained in the response. | [optional] [default to 100]
 **offset** | **Integer**| The number of the first record to be supplied in the segmented response message. | [optional] [default to 0]
 **continuation_token** | **String**| Allows the client to resume retrieving results from where the previous page left off | [optional] 
 **sort** | **String**| Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter. | [optional] 
 **order_by** | **String**| The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc). | [optional] 
 **filter** | **String**| The filtering rules to be applied when identifying the records to be supplied in the response message. | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| To identify the range of fields that should be supplied in the response message. | [optional] 

### Return type

[**MultipleAcademicSessionsType**](MultipleAcademicSessionsType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



