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

# Unit tests for OneRosterClient::EnrollmentsType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EnrollmentsType' do
  before do
    # run before each test
    @instance = OneRosterClient::EnrollmentsType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EnrollmentsType' do
    it 'should create an instance of EnrollmentsType' do
      expect(@instance).to be_instance_of(OneRosterClient::EnrollmentsType)
    end
  end
  describe 'test attribute "enrollments"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
