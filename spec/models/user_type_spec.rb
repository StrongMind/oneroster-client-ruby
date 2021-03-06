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

# Unit tests for OneRosterClient::UserType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserType' do
  before do
    # run before each test
    obj = build(:one_roster_user)
    obj.password = 'password'
    obj.middle_name = 'middle_name'
    obj.enabled_user = true
    @instance = OneRosterClient::UserType.build_from_hash(obj.to_hash)
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserType' do
    it 'should create an instance of UserType' do
      expect(@instance).to be_instance_of(OneRosterClient::UserType)
    end
  end
  describe 'test attribute "username"' do
    it 'should work' do
      expect(@instance.username).to be_a(String)
    end
  end

  describe 'test attribute "user_ids"' do
    it 'should work' do
      expect(@instance.user_ids).to be_a(Array)
      @instance.user_ids.each do |val|
        expect(val).to be_a(OneRosterClient::UserIdType)
      end
    end
  end

  describe 'test attribute "enabled_user"' do
    it 'should work' do
      expect(@instance.enabled_user).to be_a(TrueClass)
    end
  end

  describe 'test attribute "given_name"' do
    it 'should work' do
      expect(@instance.given_name).to be_a(String)
    end
  end

  describe 'test attribute "family_name"' do
    it 'should work' do
      expect(@instance.family_name).to be_a(String)
    end
  end

  describe 'test attribute "middle_name"' do
    it 'should work' do
      expect(@instance.middle_name).to be_a(String)
    end
  end

  describe 'test attribute "role"' do
    it 'should work' do
      expect(@instance.role).to be_a(String)
    end
  end

  describe 'test attribute "identifier"' do
    it 'should work' do
      expect(@instance.identifier).to be_a(String)
    end
  end

  describe 'test attribute "email"' do
    it 'should work' do
      expect(@instance.email).to be_a(String)
    end
  end

  describe 'test attribute "sms"' do
    it 'should work' do
      expect(@instance.sms).to be_a(String)
    end
  end

  describe 'test attribute "phone"' do
    it 'should work' do
      expect(@instance.phone).to be_a(String)
    end
  end

  describe 'test attribute "agents"' do
    it 'should work' do
      expect(@instance.agents).to be_a(Array)
    end
  end

  describe 'test attribute "orgs"' do
    it 'should work' do
      expect(@instance.orgs).to be_a(Array)
    end
  end

  describe 'test attribute "grades"' do
    it 'should work' do
      expect(@instance.grades).to be_a(Array)
    end
  end

  describe 'test attribute "password"' do
    it 'should work' do
      expect(@instance.password).to be_a(String)
    end
  end

  describe 'test attribute "sourced_id"' do
    it 'should work' do
      expect(@instance.sourced_id).to be_a(String)
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      expect(@instance.status).to be_a(String)
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["active", "tobedeleted"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "date_last_modified"' do
    it 'should work' do
      expect(@instance.date_last_modified).to be_a(DateTime)
    end
  end

  describe 'test attribute "metadata"' do
    it 'should work' do
      expect(@instance.metadata).to be_a(Object)
    end
  end

end
