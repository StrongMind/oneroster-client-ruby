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

# Unit tests for OneRosterClient::ClassesType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ClassesType' do
  before do
    # run before each test
    obj = build(:one_roster_class)
    @instance = OneRosterClient::ClassesType.build_from_hash({:classes => [obj.to_hash]})  end

  after do
    # run after each test
  end

  describe 'test an instance of ClassesType' do
    it 'should create an instance of ClassesType' do
      expect(@instance).to be_instance_of(OneRosterClient::ClassesType)
    end
  end
  describe 'test attribute "classes"' do
    it 'should work' do
      expect(@instance.classes).to be_a(Array)
    end
    it 'contains classes' do
      @instance.classes.each do |item|
        expect(item).to be_a(OneRosterClient::ClassType)
      end
    end
  end

end
