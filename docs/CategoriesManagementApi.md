# SwaggerClient::CategoriesManagementApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_category**](CategoriesManagementApi.md#delete_category) | **DELETE** /categories/{sourcedId} | The REST delete request message for the deleteCategory() API call.
[**get_categories**](CategoriesManagementApi.md#get_categories) | **GET** /categories | The REST read request message for the getCategories() API call.
[**get_category**](CategoriesManagementApi.md#get_category) | **GET** /categories/{sourcedId} | The REST read request message for the getCategory() API call.
[**put_category**](CategoriesManagementApi.md#put_category) | **PUT** /categories/{sourcedId} | The REST create request message for the putCategory() API call.

# **delete_category**
> delete_category(sourced_id)

The REST delete request message for the deleteCategory() API call.

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

api_instance = SwaggerClient::CategoriesManagementApi.new
sourced_id = 'sourced_id_example' # String | ...tbd...


begin
  #The REST delete request message for the deleteCategory() API call.
  api_instance.delete_category(sourced_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesManagementApi->delete_category: #{e}"
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



# **get_categories**
> CategoriesType get_categories(opts)

The REST read request message for the getCategories() API call.

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

api_instance = SwaggerClient::CategoriesManagementApi.new
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
  #The REST read request message for the getCategories() API call.
  result = api_instance.get_categories(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesManagementApi->get_categories: #{e}"
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

[**CategoriesType**](CategoriesType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_category**
> SingleCategoryType get_category(sourced_id)

The REST read request message for the getCategory() API call.

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

api_instance = SwaggerClient::CategoriesManagementApi.new
sourced_id = 'sourced_id_example' # String | ...tbd...


begin
  #The REST read request message for the getCategory() API call.
  result = api_instance.get_category(sourced_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesManagementApi->get_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourced_id** | **String**| ...tbd... | 

### Return type

[**SingleCategoryType**](SingleCategoryType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_category**
> put_category(bodysourced_id)

The REST create request message for the putCategory() API call.

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

api_instance = SwaggerClient::CategoriesManagementApi.new
body = SwaggerClient::SingleCategoryType.new # SingleCategoryType | ...tbd...
sourced_id = 'sourced_id_example' # String | ...tbd...


begin
  #The REST create request message for the putCategory() API call.
  api_instance.put_category(bodysourced_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesManagementApi->put_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SingleCategoryType**](SingleCategoryType.md)| ...tbd... | 
 **sourced_id** | **String**| ...tbd... | 

### Return type

nil (empty response body)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



