# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :one_roster_course, class: OneRosterClient::CourseType do
    sourced_id { SecureRandom.uuid }
    status { 'active' }
    date_last_modified { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now).to_s }
    metadata do
      {
        StrongMind: { powerschool_section_dcid: Faker::Number.number(digits: 5) }
      }
    end
    title { Faker::Lorem.sentence }
    course_code { Faker::Lorem.word }
    school_year { FactoryBot.build(:one_roster_guid_ref, type: 'academicSession') }
    grades do
      [
        %w[IT PR PK TK KG 01 02 03 04 05 06 07 08 09 10 11 12 13 PS UG Other].sample
      ]
    end
    subjects { [Faker::Lorem.word, Faker::Lorem.word] }
    org { FactoryBot.build(:one_roster_guid_ref, type: 'org') }
    subject_codes { [Faker::Lorem.word, Faker::Lorem.word] }
    resources { [FactoryBot.build(:one_roster_guid_ref, type: 'resource')] }
  end

  factory :one_roster_single_course, class: OneRosterClient::SingleCourseType do
    course { FactoryBot.build(:one_roster_course).to_hash }
  end
end
