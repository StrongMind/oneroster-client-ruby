=begin
#OneRoster OpenAPI (JSON) Definition

#The OneRoster service binding is available in WSDL/XSD and REST/JSON. The model is based upon the IMS PSM modelling approach.

OpenAPI spec version: 1.1
Contact: platform@strongmind.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

module OneRosterClient
  class ClassesManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # The REST read request message for the getClass() API call.
    # To read, get, a specific class.
    # @param sourced_id The unique identifier for this class.
    # @param [Hash] opts the optional parameters
    # @return [SingleClassType]
    def get_class(sourced_id, opts = {})
      data, _status_code, _headers = get_class_with_http_info(sourced_id, opts)
      data
    end

    # The REST read request message for the getClass() API call.
    # To read, get, a specific class.
    # @param sourced_id The unique identifier for this class.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleClassType, Integer, Hash)>] SingleClassType data, response status code and response headers
    def get_class_with_http_info(sourced_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesManagementApi.get_class ...'
      end
      # verify the required parameter 'sourced_id' is set
      if @api_client.config.client_side_validation && sourced_id.nil?
        fail ArgumentError, "Missing the required parameter 'sourced_id' when calling ClassesManagementApi.get_class"
      end
      # resource path
      local_var_path = '/classes/{sourcedId}'.sub('{' + 'sourcedId' + '}', sourced_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'SingleClassType' 

      auth_names = opts[:auth_names] || ['OAuth2Security']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesManagementApi#get_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # The REST read request message for the getClasses() API call.
    # To read, get, a collection of classes i.e. all classes.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response. (default to 100)
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message. (default to 0)
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [ClassesType]
    def get_classes(opts = {})
      data, _status_code, _headers = get_classes_with_http_info(opts)
      data
    end

    # The REST read request message for the getClasses() API call.
    # To read, get, a collection of classes i.e. all classes.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response.
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message.
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [Array<(ClassesType, Integer, Hash)>] ClassesType data, response status code and response headers
    def get_classes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesManagementApi.get_classes ...'
      end
      if @api_client.config.client_side_validation && opts[:'order_by'] && !['acs', 'desc'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of acs, desc'
      end
      # resource path
      local_var_path = '/classes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'continuationToken'] = opts[:'continuation_token'] if !opts[:'continuation_token'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ClassesType' 

      auth_names = opts[:auth_names] || ['OAuth2Security']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesManagementApi#get_classes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # The REST read request message for the getClassesForCourse() API call.
    # ...not supplied...
    # @param course_sourced_id ...tbd...
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response. (default to 100)
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message. (default to 0)
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [ClassesType]
    def get_classes_for_course(course_sourced_id, opts = {})
      data, _status_code, _headers = get_classes_for_course_with_http_info(course_sourced_id, opts)
      data
    end

    # The REST read request message for the getClassesForCourse() API call.
    # ...not supplied...
    # @param course_sourced_id ...tbd...
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response.
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message.
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [Array<(ClassesType, Integer, Hash)>] ClassesType data, response status code and response headers
    def get_classes_for_course_with_http_info(course_sourced_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesManagementApi.get_classes_for_course ...'
      end
      # verify the required parameter 'course_sourced_id' is set
      if @api_client.config.client_side_validation && course_sourced_id.nil?
        fail ArgumentError, "Missing the required parameter 'course_sourced_id' when calling ClassesManagementApi.get_classes_for_course"
      end
      if @api_client.config.client_side_validation && opts[:'order_by'] && !['acs', 'desc'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of acs, desc'
      end
      # resource path
      local_var_path = '/courses/{courseSourcedId}/classes'.sub('{' + 'courseSourcedId' + '}', course_sourced_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'continuationToken'] = opts[:'continuation_token'] if !opts[:'continuation_token'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ClassesType' 

      auth_names = opts[:auth_names] || ['OAuth2Security']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesManagementApi#get_classes_for_course\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # The REST read request message for the getClassesForSchool() API call.
    # ...not supplied...
    # @param school_sourced_id ...tbd...
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response. (default to 100)
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message. (default to 0)
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [ClassesType]
    def get_classes_for_school(school_sourced_id, opts = {})
      data, _status_code, _headers = get_classes_for_school_with_http_info(school_sourced_id, opts)
      data
    end

    # The REST read request message for the getClassesForSchool() API call.
    # ...not supplied...
    # @param school_sourced_id ...tbd...
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response.
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message.
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [Array<(ClassesType, Integer, Hash)>] ClassesType data, response status code and response headers
    def get_classes_for_school_with_http_info(school_sourced_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesManagementApi.get_classes_for_school ...'
      end
      # verify the required parameter 'school_sourced_id' is set
      if @api_client.config.client_side_validation && school_sourced_id.nil?
        fail ArgumentError, "Missing the required parameter 'school_sourced_id' when calling ClassesManagementApi.get_classes_for_school"
      end
      if @api_client.config.client_side_validation && opts[:'order_by'] && !['acs', 'desc'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of acs, desc'
      end
      # resource path
      local_var_path = '/schools/{schoolSourcedId}/classes'.sub('{' + 'schoolSourcedId' + '}', school_sourced_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'continuationToken'] = opts[:'continuation_token'] if !opts[:'continuation_token'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ClassesType' 

      auth_names = opts[:auth_names] || ['OAuth2Security']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesManagementApi#get_classes_for_school\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # The REST read request message for the getClassesForStudent() API call.
    # ...not supplied...
    # @param student_sourced_id ...tbd...
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response. (default to 100)
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message. (default to 0)
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [ClassesType]
    def get_classes_for_student(student_sourced_id, opts = {})
      data, _status_code, _headers = get_classes_for_student_with_http_info(student_sourced_id, opts)
      data
    end

    # The REST read request message for the getClassesForStudent() API call.
    # ...not supplied...
    # @param student_sourced_id ...tbd...
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response.
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message.
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [Array<(ClassesType, Integer, Hash)>] ClassesType data, response status code and response headers
    def get_classes_for_student_with_http_info(student_sourced_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesManagementApi.get_classes_for_student ...'
      end
      # verify the required parameter 'student_sourced_id' is set
      if @api_client.config.client_side_validation && student_sourced_id.nil?
        fail ArgumentError, "Missing the required parameter 'student_sourced_id' when calling ClassesManagementApi.get_classes_for_student"
      end
      if @api_client.config.client_side_validation && opts[:'order_by'] && !['acs', 'desc'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of acs, desc'
      end
      # resource path
      local_var_path = '/students/{studentSourcedId}/classes'.sub('{' + 'studentSourcedId' + '}', student_sourced_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'continuationToken'] = opts[:'continuation_token'] if !opts[:'continuation_token'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ClassesType' 

      auth_names = opts[:auth_names] || ['OAuth2Security']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesManagementApi#get_classes_for_student\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # The REST read request message for the getClassesForTeacher() API call.
    # ...not supplied...
    # @param teacher_sourced_id ...tbd...
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response. (default to 100)
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message. (default to 0)
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [ClassesType]
    def get_classes_for_teacher(teacher_sourced_id, opts = {})
      data, _status_code, _headers = get_classes_for_teacher_with_http_info(teacher_sourced_id, opts)
      data
    end

    # The REST read request message for the getClassesForTeacher() API call.
    # ...not supplied...
    # @param teacher_sourced_id ...tbd...
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response.
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message.
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [Array<(ClassesType, Integer, Hash)>] ClassesType data, response status code and response headers
    def get_classes_for_teacher_with_http_info(teacher_sourced_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesManagementApi.get_classes_for_teacher ...'
      end
      # verify the required parameter 'teacher_sourced_id' is set
      if @api_client.config.client_side_validation && teacher_sourced_id.nil?
        fail ArgumentError, "Missing the required parameter 'teacher_sourced_id' when calling ClassesManagementApi.get_classes_for_teacher"
      end
      if @api_client.config.client_side_validation && opts[:'order_by'] && !['acs', 'desc'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of acs, desc'
      end
      # resource path
      local_var_path = '/teachers/{teacherSourcedId}/classes'.sub('{' + 'teacherSourcedId' + '}', teacher_sourced_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'continuationToken'] = opts[:'continuation_token'] if !opts[:'continuation_token'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ClassesType' 

      auth_names = opts[:auth_names] || ['OAuth2Security']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesManagementApi#get_classes_for_teacher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # The REST read request message for the getClassesForTerm() API call.
    # ...not supplied...
    # @param term_sourced_id ...tbd...
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response. (default to 100)
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message. (default to 0)
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [ClassesType]
    def get_classes_for_term(term_sourced_id, opts = {})
      data, _status_code, _headers = get_classes_for_term_with_http_info(term_sourced_id, opts)
      data
    end

    # The REST read request message for the getClassesForTerm() API call.
    # ...not supplied...
    # @param term_sourced_id ...tbd...
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response.
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message.
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [Array<(ClassesType, Integer, Hash)>] ClassesType data, response status code and response headers
    def get_classes_for_term_with_http_info(term_sourced_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesManagementApi.get_classes_for_term ...'
      end
      # verify the required parameter 'term_sourced_id' is set
      if @api_client.config.client_side_validation && term_sourced_id.nil?
        fail ArgumentError, "Missing the required parameter 'term_sourced_id' when calling ClassesManagementApi.get_classes_for_term"
      end
      if @api_client.config.client_side_validation && opts[:'order_by'] && !['acs', 'desc'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of acs, desc'
      end
      # resource path
      local_var_path = '/terms/{termSourcedId}/classes'.sub('{' + 'termSourcedId' + '}', term_sourced_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'continuationToken'] = opts[:'continuation_token'] if !opts[:'continuation_token'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ClassesType' 

      auth_names = opts[:auth_names] || ['OAuth2Security']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesManagementApi#get_classes_for_term\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # The REST read request message for the getClassesForUser() API call.
    # ...not supplied...
    # @param user_sourced_id ...tbd...
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response. (default to 100)
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message. (default to 0)
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [ClassesType]
    def get_classes_for_user(user_sourced_id, opts = {})
      data, _status_code, _headers = get_classes_for_user_with_http_info(user_sourced_id, opts)
      data
    end

    # The REST read request message for the getClassesForUser() API call.
    # ...not supplied...
    # @param user_sourced_id ...tbd...
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response.
    # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message.
    # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
    # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
    # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
    # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
    # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
    # @return [Array<(ClassesType, Integer, Hash)>] ClassesType data, response status code and response headers
    def get_classes_for_user_with_http_info(user_sourced_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClassesManagementApi.get_classes_for_user ...'
      end
      # verify the required parameter 'user_sourced_id' is set
      if @api_client.config.client_side_validation && user_sourced_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_sourced_id' when calling ClassesManagementApi.get_classes_for_user"
      end
      if @api_client.config.client_side_validation && opts[:'order_by'] && !['acs', 'desc'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of acs, desc'
      end
      # resource path
      local_var_path = '/users/{userSourcedId}/classes'.sub('{' + 'userSourcedId' + '}', user_sourced_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'continuationToken'] = opts[:'continuation_token'] if !opts[:'continuation_token'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ClassesType' 

      auth_names = opts[:auth_names] || ['OAuth2Security']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClassesManagementApi#get_classes_for_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
