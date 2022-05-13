=begin
#OneRoster OpenAPI (JSON) Definition

#The OneRoster service binding is available in WSDL/XSD and REST/JSON. The model is based upon the IMS PSM modelling approach.

OpenAPI spec version: 1.1
Contact: platform@strongmind.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'

# Unit tests for OneRosterClient::DemographicsManagementApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DemographicsManagementApi' do
  before do
    # run before each test
    @instance = OneRosterClient::DemographicsManagementApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DemographicsManagementApi' do
    it 'should create an instance of DemographicsManagementApi' do
      expect(@instance).to be_instance_of(OneRosterClient::DemographicsManagementApi)
    end
  end

  # unit tests for get_demographic
  # The REST read request message for the getDemographic() API call.
  # ...not supplied...
  # @param sourced_id ...tbd...
  # @param [Hash] opts the optional parameters
  # @return [SingleDemographicsType]
  describe 'get_demographic test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_demographics
  # The REST read request message for the getDemographics() API call.
  # ...not supplied...
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response.
  # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message.
  # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
  # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
  # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
  # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
  # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
  # @return [DemographicsType]
  describe 'get_demographics test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
