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
require 'date'

# Unit tests for OneRosterClient::ImsxCodeMinorFieldType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ImsxCodeMinorFieldType' do
  before do
    # run before each test
    @instance = OneRosterClient::ImsxCodeMinorFieldType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImsxCodeMinorFieldType' do
    it 'should create an instance of ImsxCodeMinorFieldType' do
      expect(@instance).to be_instance_of(OneRosterClient::ImsxCodeMinorFieldType)
    end
  end
  describe 'test attribute "imsx_code_minor_field_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "imsx_code_minor_field_value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["fullsuccess", "invalid_sort_field", "invalid_selection_field", "invaliddata", "unauthorisedrequest", "linkfailure", "unsupportedoperation", "deletefailure", "unknownobject", "targetreadfailure"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.imsx_code_minor_field_value = value }.not_to raise_error
      # end
    end
  end

end
