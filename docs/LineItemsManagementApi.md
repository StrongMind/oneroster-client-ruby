# OneRosterClient::LineItemsManagementApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_line_item**](LineItemsManagementApi.md#delete_line_item) | **DELETE** /lineItems/{sourcedId} | The REST delete request message for the deleteLineItem() API call.
[**get_line_item**](LineItemsManagementApi.md#get_line_item) | **GET** /lineItems/{sourcedId} | The REST read request message for the getLineItem() API call.
[**get_line_items**](LineItemsManagementApi.md#get_line_items) | **GET** /lineItems | The REST read request message for the getLineItems() API call.
[**get_line_items_for_class**](LineItemsManagementApi.md#get_line_items_for_class) | **GET** /classes/{classSourcedId}/lineItems | The REST read request message for the getLineItemsForClass() API call.
[**put_line_item**](LineItemsManagementApi.md#put_line_item) | **PUT** /lineItems/{sourcedId} | The REST create request message for the putLineItem() API call.

# **delete_line_item**
> delete_line_item(sourced_id)

The REST delete request message for the deleteLineItem() API call.

...not supplied...

### Example
```ruby
# load the gem
require 'oneroster_client'
# setup authorization
OneRosterClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OneRosterClient::LineItemsManagementApi.new
sourced_id = 'sourced_id_example' # String | ...tbd...


begin
  #The REST delete request message for the deleteLineItem() API call.
  api_instance.delete_line_item(sourced_id)
rescue OneRosterClient::ApiError => e
  puts "Exception when calling LineItemsManagementApi->delete_line_item: #{e}"
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



# **get_line_item**
> SingleLineItemType get_line_item(sourced_id)

The REST read request message for the getLineItem() API call.

...not supplied...

### Example
```ruby
# load the gem
require 'oneroster_client'
# setup authorization
OneRosterClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OneRosterClient::LineItemsManagementApi.new
sourced_id = 'sourced_id_example' # String | ...tbd...


begin
  #The REST read request message for the getLineItem() API call.
  result = api_instance.get_line_item(sourced_id)
  p result
rescue OneRosterClient::ApiError => e
  puts "Exception when calling LineItemsManagementApi->get_line_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourced_id** | **String**| ...tbd... | 

### Return type

[**SingleLineItemType**](SingleLineItemType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_line_items**
> LineItemsType get_line_items(opts)

The REST read request message for the getLineItems() API call.

...not supplied...

### Example
```ruby
# load the gem
require 'oneroster_client'
# setup authorization
OneRosterClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OneRosterClient::LineItemsManagementApi.new
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
  #The REST read request message for the getLineItems() API call.
  result = api_instance.get_line_items(opts)
  p result
rescue OneRosterClient::ApiError => e
  puts "Exception when calling LineItemsManagementApi->get_line_items: #{e}"
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

[**LineItemsType**](LineItemsType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_line_items_for_class**
> LineItemsType get_line_items_for_class(class_sourced_id, opts)

The REST read request message for the getLineItemsForClass() API call.

...not supplied...

### Example
```ruby
# load the gem
require 'oneroster_client'
# setup authorization
OneRosterClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OneRosterClient::LineItemsManagementApi.new
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
  #The REST read request message for the getLineItemsForClass() API call.
  result = api_instance.get_line_items_for_class(class_sourced_id, opts)
  p result
rescue OneRosterClient::ApiError => e
  puts "Exception when calling LineItemsManagementApi->get_line_items_for_class: #{e}"
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

[**LineItemsType**](LineItemsType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_line_item**
> put_line_item(bodysourced_id)

The REST create request message for the putLineItem() API call.

...not supplied...

### Example
```ruby
# load the gem
require 'oneroster_client'
# setup authorization
OneRosterClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OneRosterClient::LineItemsManagementApi.new
body = OneRosterClient::SingleLineItemType.new # SingleLineItemType | ...tbd...
sourced_id = 'sourced_id_example' # String | ...tbd...


begin
  #The REST create request message for the putLineItem() API call.
  api_instance.put_line_item(bodysourced_id)
rescue OneRosterClient::ApiError => e
  puts "Exception when calling LineItemsManagementApi->put_line_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SingleLineItemType**](SingleLineItemType.md)| ...tbd... | 
 **sourced_id** | **String**| ...tbd... | 

### Return type

nil (empty response body)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



