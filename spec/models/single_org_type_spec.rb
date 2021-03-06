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

# Unit tests for OneRosterClient::SingleOrgType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SingleOrgType' do
  before do
    # run before each test
    factory = build(:one_roster_single_org)
    @instance = OneRosterClient::SingleOrgType.build_from_hash factory.to_hash
  end

  after do
    # run after each test
  end

  describe 'test an instance of SingleOrgType' do
    it 'should create an instance of SingleOrgType' do
      expect(@instance).to be_instance_of(OneRosterClient::SingleOrgType)
    end
  end
  describe 'test attribute "org"' do
    it 'should be an instance of OrgType' do
      expect(@instance.org).to be_instance_of(OneRosterClient::OrgType)
    end
  end

end
