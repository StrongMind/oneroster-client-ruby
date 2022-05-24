# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :one_roster_class, class: OneRosterClient::ClassType do
    sourced_id { SecureRandom.uuid }
    status { 'active' }
    date_last_modified { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now).to_s }
    metadata do
      {
        StrongMind: { powerschool_section_dcid: Faker::Number.number(digits: 5) }
      }
    end
    title { Faker::Lorem.sentence }
    class_code { Faker::Number.number(digits: 5) }
    class_type { %w[homeroom scheduled].sample }
    location { Faker::Address.city }
    grades do
      [
        %w[IT PR PK TK KG 01 02 03 04 05 06 07 08 09 10 11 12 13 PS UG Other].sample
      ]
    end
    subjects { [Faker::Lorem.word, Faker::Lorem.word] }
    subject_codes { [Faker::Lorem.word, Faker::Lorem.word] }
    course { FactoryBot.build(:one_roster_guid_ref, type: 'course') }
    school { FactoryBot.build(:one_roster_guid_ref, type: 'org') }
    terms { [FactoryBot.build(:one_roster_guid_ref, type: 'academicSession')] }
  end

  factory :one_roster_single_class, class: OneRosterClient::SingleClassType do
    _class { FactoryBot.build(:one_roster_class).to_hash }
  end
end
