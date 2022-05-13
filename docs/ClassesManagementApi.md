# SwaggerClient::ClassesManagementApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_class**](ClassesManagementApi.md#get_class) | **GET** /classes/{sourcedId} | The REST read request message for the getClass() API call.
[**get_classes**](ClassesManagementApi.md#get_classes) | **GET** /classes | The REST read request message for the getClasses() API call.
[**get_classes_for_course**](ClassesManagementApi.md#get_classes_for_course) | **GET** /courses/{courseSourcedId}/classes | The REST read request message for the getClassesForCourse() API call.
[**get_classes_for_school**](ClassesManagementApi.md#get_classes_for_school) | **GET** /schools/{schoolSourcedId}/classes | The REST read request message for the getClassesForSchool() API call.
[**get_classes_for_student**](ClassesManagementApi.md#get_classes_for_student) | **GET** /students/{studentSourcedId}/classes | The REST read request message for the getClassesForStudent() API call.
[**get_classes_for_teacher**](ClassesManagementApi.md#get_classes_for_teacher) | **GET** /teachers/{teacherSourcedId}/classes | The REST read request message for the getClassesForTeacher() API call.
[**get_classes_for_term**](ClassesManagementApi.md#get_classes_for_term) | **GET** /terms/{termSourcedId}/classes | The REST read request message for the getClassesForTerm() API call.
[**get_classes_for_user**](ClassesManagementApi.md#get_classes_for_user) | **GET** /users/{userSourcedId}/classes | The REST read request message for the getClassesForUser() API call.

# **get_class**
> SingleClassType get_class(sourced_id)

The REST read request message for the getClass() API call.

To read, get, a specific class.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ClassesManagementApi.new
sourced_id = 'sourced_id_example' # String | The unique identifier for this class.


begin
  #The REST read request message for the getClass() API call.
  result = api_instance.get_class(sourced_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassesManagementApi->get_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourced_id** | **String**| The unique identifier for this class. | 

### Return type

[**SingleClassType**](SingleClassType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_classes**
> ClassesType get_classes(opts)

The REST read request message for the getClasses() API call.

To read, get, a collection of classes i.e. all classes.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2Security
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ClassesManagementApi.new
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
  #The REST read request message for the getClasses() API call.
  result = api_instance.get_classes(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassesManagementApi->get_classes: #{e}"
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

[**ClassesType**](ClassesType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_classes_for_course**
> ClassesType get_classes_for_course(course_sourced_id, opts)

The REST read request message for the getClassesForCourse() API call.

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

api_instance = SwaggerClient::ClassesManagementApi.new
course_sourced_id = 'course_sourced_id_example' # String | ...tbd...
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
  #The REST read request message for the getClassesForCourse() API call.
  result = api_instance.get_classes_for_course(course_sourced_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassesManagementApi->get_classes_for_course: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course_sourced_id** | **String**| ...tbd... | 
 **limit** | **Integer**| To define the download segmentation value i.e. the maximum number of records to be contained in the response. | [optional] [default to 100]
 **offset** | **Integer**| The number of the first record to be supplied in the segmented response message. | [optional] [default to 0]
 **continuation_token** | **String**| Allows the client to resume retrieving results from where the previous page left off | [optional] 
 **sort** | **String**| Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter. | [optional] 
 **order_by** | **String**| The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc). | [optional] 
 **filter** | **String**| The filtering rules to be applied when identifying the records to be supplied in the response message. | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| To identify the range of fields that should be supplied in the response message. | [optional] 

### Return type

[**ClassesType**](ClassesType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_classes_for_school**
> ClassesType get_classes_for_school(school_sourced_id, opts)

The REST read request message for the getClassesForSchool() API call.

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

api_instance = SwaggerClient::ClassesManagementApi.new
school_sourced_id = 'school_sourced_id_example' # String | ...tbd...
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
  #The REST read request message for the getClassesForSchool() API call.
  result = api_instance.get_classes_for_school(school_sourced_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassesManagementApi->get_classes_for_school: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **school_sourced_id** | **String**| ...tbd... | 
 **limit** | **Integer**| To define the download segmentation value i.e. the maximum number of records to be contained in the response. | [optional] [default to 100]
 **offset** | **Integer**| The number of the first record to be supplied in the segmented response message. | [optional] [default to 0]
 **continuation_token** | **String**| Allows the client to resume retrieving results from where the previous page left off | [optional] 
 **sort** | **String**| Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter. | [optional] 
 **order_by** | **String**| The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc). | [optional] 
 **filter** | **String**| The filtering rules to be applied when identifying the records to be supplied in the response message. | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| To identify the range of fields that should be supplied in the response message. | [optional] 

### Return type

[**ClassesType**](ClassesType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_classes_for_student**
> ClassesType get_classes_for_student(student_sourced_id, opts)

The REST read request message for the getClassesForStudent() API call.

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

api_instance = SwaggerClient::ClassesManagementApi.new
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
  #The REST read request message for the getClassesForStudent() API call.
  result = api_instance.get_classes_for_student(student_sourced_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassesManagementApi->get_classes_for_student: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **student_sourced_id** | **String**| ...tbd... | 
 **limit** | **Integer**| To define the download segmentation value i.e. the maximum number of records to be contained in the response. | [optional] [default to 100]
 **offset** | **Integer**| The number of the first record to be supplied in the segmented response message. | [optional] [default to 0]
 **continuation_token** | **String**| Allows the client to resume retrieving results from where the previous page left off | [optional] 
 **sort** | **String**| Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter. | [optional] 
 **order_by** | **String**| The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc). | [optional] 
 **filter** | **String**| The filtering rules to be applied when identifying the records to be supplied in the response message. | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| To identify the range of fields that should be supplied in the response message. | [optional] 

### Return type

[**ClassesType**](ClassesType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_classes_for_teacher**
> ClassesType get_classes_for_teacher(teacher_sourced_id, opts)

The REST read request message for the getClassesForTeacher() API call.

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

api_instance = SwaggerClient::ClassesManagementApi.new
teacher_sourced_id = 'teacher_sourced_id_example' # String | ...tbd...
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
  #The REST read request message for the getClassesForTeacher() API call.
  result = api_instance.get_classes_for_teacher(teacher_sourced_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassesManagementApi->get_classes_for_teacher: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teacher_sourced_id** | **String**| ...tbd... | 
 **limit** | **Integer**| To define the download segmentation value i.e. the maximum number of records to be contained in the response. | [optional] [default to 100]
 **offset** | **Integer**| The number of the first record to be supplied in the segmented response message. | [optional] [default to 0]
 **continuation_token** | **String**| Allows the client to resume retrieving results from where the previous page left off | [optional] 
 **sort** | **String**| Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter. | [optional] 
 **order_by** | **String**| The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc). | [optional] 
 **filter** | **String**| The filtering rules to be applied when identifying the records to be supplied in the response message. | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| To identify the range of fields that should be supplied in the response message. | [optional] 

### Return type

[**ClassesType**](ClassesType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_classes_for_term**
> ClassesType get_classes_for_term(term_sourced_id, opts)

The REST read request message for the getClassesForTerm() API call.

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

api_instance = SwaggerClient::ClassesManagementApi.new
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
  #The REST read request message for the getClassesForTerm() API call.
  result = api_instance.get_classes_for_term(term_sourced_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassesManagementApi->get_classes_for_term: #{e}"
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

[**ClassesType**](ClassesType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_classes_for_user**
> ClassesType get_classes_for_user(user_sourced_id, opts)

The REST read request message for the getClassesForUser() API call.

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

api_instance = SwaggerClient::ClassesManagementApi.new
user_sourced_id = 'user_sourced_id_example' # String | ...tbd...
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
  #The REST read request message for the getClassesForUser() API call.
  result = api_instance.get_classes_for_user(user_sourced_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClassesManagementApi->get_classes_for_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_sourced_id** | **String**| ...tbd... | 
 **limit** | **Integer**| To define the download segmentation value i.e. the maximum number of records to be contained in the response. | [optional] [default to 100]
 **offset** | **Integer**| The number of the first record to be supplied in the segmented response message. | [optional] [default to 0]
 **continuation_token** | **String**| Allows the client to resume retrieving results from where the previous page left off | [optional] 
 **sort** | **String**| Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter. | [optional] 
 **order_by** | **String**| The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc). | [optional] 
 **filter** | **String**| The filtering rules to be applied when identifying the records to be supplied in the response message. | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| To identify the range of fields that should be supplied in the response message. | [optional] 

### Return type

[**ClassesType**](ClassesType.md)

### Authorization

[OAuth2Security](../README.md#OAuth2Security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



