# OneRosterClient namespace
module OneRosterClient
  # OneRosterClient error base class
  class Error < StandardError
    # @return [ Hash ]
    #              :status  - Optional integer HTTP response status
    #              :headers - String key/value hash of HTTP response header
    #                         values.
    #              :body    - Optional string HTTP response body.
    #              :request - Hash
    #                           :method   - Symbol with the request HTTP method.
    #                           :url      - URI object with the url requested.
    #                           :url_path - String with the url path requested.
    #                           :params   - String key/value hash of query params
    #                                     present in the request.
    #                           :headers  - String key/value hash of HTTP request
    #                                     header values.
    #                           :body     - String HTTP request body.
    attr_reader :response

    # Frozen string representing the dependency raising the error
    # @return [ String ]
    attr_reader :dependency_name

    # Create a new error
    # @param [ Typhoeus::Response ] response
    # @param [ String ] message Additional message info
    def initialize(response = nil, message = nil)
      @dependency_name = 'OneRoster'
      @msg = message if message
      @response = { request: {} }
      return unless response

      @response[:status] = response.response_code
      @response[:headers] = response.response_headers
      @response[:body] = response.response_body
      return unless response.request

      @response[:request][:method] = response.request.options[:method]
      @response[:request][:url] = response.request.base_url
      @response[:request][:body] = response.request.options[:body]
      @response[:request][:params] = response.request.options[:params]
      @response[:request][:headers] = response.request.options[:headers]
    end

    # Override to_s to display a friendly error message
    def to_s
      message
    end

    def message
      if @msg.nil?
        msg = "Error message: the server returned an error"
      else
        msg = @msg
      end

      msg += "\nHTTP status code: #{@response[:status]}" if @response[:status]
      msg += "\nResponse headers: #{@response[:headers]}" if @response[:headers]
      msg += "\nResponse body: #{@response[:body]}" if @response[:body]

      msg
    end

  end

  class ClientError < Error
  end

  class ServerError < Error
  end

  class TimeoutError < Error
    def initialize(response = nil, message = "Connection timed out")
      super(response, message)
    end
  end

  class NilStatusError < ServerError
    def initialize(response = nil, message = "HTTP status could not be derived from the server response")
      super(response, message)
    end
  end
end

