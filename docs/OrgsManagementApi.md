# SwaggerClient::OrgsManagementApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_org**](OrgsManagementApi.md#get_org) | **GET** /orgs/{sourcedId} | The REST read request message for the getOrg() API call.
[**get_orgs**](OrgsManagementApi.md#get_orgs) | **GET** /orgs | The REST read request message for the getOrgs() API call.

# **get_org**
> SingleOrgType get_org(sourced_id)

The REST read request message for the getOrg() API call.

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

api_instance = SwaggerClient::OrgsManagementApi.new
sourced_id = 'sourced_id_example' # String | ...tbd...


begin
  #The REST read request message for the getOrg() API call.
  result = api_instance.get_org(sourced_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrgsManagementApi->get_org: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourced_id** | **String**| ...tbd... | 

### Return type

[**SingleOrgType**](SingleOrgType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_orgs**
> OrgsType get_orgs(opts)

The REST read request message for the getOrgs() API call.

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

api_instance = SwaggerClient::OrgsManagementApi.new
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
  #The REST read request message for the getOrgs() API call.
  result = api_instance.get_orgs(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrgsManagementApi->get_orgs: #{e}"
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

[**OrgsType**](OrgsType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



