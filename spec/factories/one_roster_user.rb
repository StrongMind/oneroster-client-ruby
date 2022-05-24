# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :one_roster_user, class: OneRosterClient::UserType do
    sourced_id { SecureRandom.uuid }
    status { 'active' }
    date_last_modified { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now).to_s }
    metadata do
      {
        StrongMind: {
          selfGuardian: [true, false].sample
        }
      }
    end
    username { Faker::Lorem.word }
    user_ids do
      [
        {
          type: 'powerschool_dcid',
          identifier: Faker::Number.number
        },
        {
          type: 'powerschool_number',
          identifier: Faker::Number.number
        },
        {
          type: 'identity_id',
          identifier: SecureRandom.uuid
        }
      ]
    end
    enabled_user { true }
    given_name { Faker::Name.first_name }
    family_name { Faker::Name.last_name }
    role { 'student' }
    identifier { Faker::Number.number }
    email { Faker::Internet.email }
    sms { Faker::PhoneNumber.phone_number }
    phone { Faker::PhoneNumber.phone_number }
    agents do
      [
        FactoryBot.build(:one_roster_guid_ref, type: 'user'),
        FactoryBot.build(:one_roster_guid_ref, type: 'user')
      ]
    end
    orgs { [FactoryBot.build(:one_roster_guid_ref, type: 'org')] }
    grades { ['KG'] }
  end

  factory :one_roster_single_user, class: OneRosterClient::SingleUserType do
    user { FactoryBot.build(:one_roster_user) }
  end
end
