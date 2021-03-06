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

# Unit tests for OneRosterClient::SingleClassType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SingleClassType' do
  before do
    # run before each test
    factory = build(:one_roster_single_class)
    @instance = OneRosterClient::SingleClassType.build_from_hash factory.to_hash
  end

  after do
    # run after each test
  end

  describe 'test an instance of SingleClassType' do
    it 'should create an instance of SingleClassType' do
      expect(@instance).to be_instance_of(OneRosterClient::SingleClassType)
    end
  end
  describe 'test attribute "_class"' do
    it 'should be an instance of ClassType' do
      expect(@instance._class).to be_instance_of(OneRosterClient::ClassType)
    end
  end

end
