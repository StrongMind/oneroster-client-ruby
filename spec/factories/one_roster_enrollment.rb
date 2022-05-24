# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :one_roster_enrollment, class: OneRosterClient::EnrollmentType do
    sourced_id { SecureRandom.uuid }
    status { 'active' }
    date_last_modified { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now).to_s }
    metadata { {} }
    user { FactoryBot.build(:one_roster_guid_ref, type: 'user') }
    _class { FactoryBot.build(:one_roster_guid_ref, type: 'class') }
    school { FactoryBot.build(:one_roster_guid_ref, type: 'org') }
    role { %w[student teacher].sample }
    primary { [true, false].sample }
    begin_date { Faker::Date.backward(days: 50).to_s }
    end_date { Faker::Date.forward(days: 100).to_s }
  end

  factory :one_roster_single_enrollment, class: OneRosterClient::SingleEnrollmentType do
    enrollment { FactoryBot.build(:one_roster_enrollment) }
  end
end
