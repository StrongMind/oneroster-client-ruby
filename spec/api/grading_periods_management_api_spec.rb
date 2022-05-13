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

# Unit tests for OneRosterClient::GradingPeriodsManagementApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GradingPeriodsManagementApi' do
  before do
    # run before each test
    @instance = OneRosterClient::GradingPeriodsManagementApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GradingPeriodsManagementApi' do
    it 'should create an instance of GradingPeriodsManagementApi' do
      expect(@instance).to be_instance_of(OneRosterClient::GradingPeriodsManagementApi)
    end
  end

  # unit tests for get_grading_period
  # The REST read request message for the getGradingPeriod() API call.
  # ...not supplied...
  # @param sourced_id ...tbd...
  # @param [Hash] opts the optional parameters
  # @return [SingleAcademicSessionType]
  describe 'get_grading_period test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_grading_periods
  # The REST read request message for the getGradingPeriods() API call.
  # ...not supplied...
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit To define the download segmentation value i.e. the maximum number of records to be contained in the response.
  # @option opts [Integer] :offset The number of the first record to be supplied in the segmented response message.
  # @option opts [String] :continuation_token Allows the client to resume retrieving results from where the previous page left off
  # @option opts [String] :sort Identifies the sort criteria to be used for the records in the response message. Use with the orderBy parameter.
  # @option opts [String] :order_by The form of ordering for response to the sorted request i.e. ascending (asc) or descending (desc).
  # @option opts [String] :filter The filtering rules to be applied when identifying the records to be supplied in the response message.
  # @option opts [Array<String>] :fields To identify the range of fields that should be supplied in the response message.
  # @return [MultipleAcademicSessionsType]
  describe 'get_grading_periods test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_grading_periods_for_term
  # The REST read request message for the getGradingPeriodsForTerm() API call.
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
  # @return [MultipleAcademicSessionsType]
  describe 'get_grading_periods_for_term test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
