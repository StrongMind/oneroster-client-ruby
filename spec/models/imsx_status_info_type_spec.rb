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

# Unit tests for OneRosterClient::ImsxStatusInfoType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ImsxStatusInfoType' do
  before do
    # run before each test
    @instance = OneRosterClient::ImsxStatusInfoType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImsxStatusInfoType' do
    it 'should create an instance of ImsxStatusInfoType' do
      expect(@instance).to be_instance_of(OneRosterClient::ImsxStatusInfoType)
    end
  end
  describe 'test attribute "imsx_code_major"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["success", "processing", "failure", "unsupported"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.imsx_code_major = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "imsx_severity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["status", "warning", "error"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.imsx_severity = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "imsx_message_ref_identifier"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "imsx_operation_ref_identifier"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "imsx_description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "imsx_code_minor"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
