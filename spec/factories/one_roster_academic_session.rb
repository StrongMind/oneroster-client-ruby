# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :one_roster_academic_session, class: OneRosterClient::AcademicSessionType do
    sourced_id { SecureRandom.uuid }
    status { 'active' }
    date_last_modified { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    metadata {}
    title { Faker::Lorem.sentence }
    start_date { Faker::Date.backward(days: 1).to_s }
    end_date { Faker::Date.forward(days: 1).to_s }
    type { %w[gradingPeriod semester schoolYear term].sample }
    parent { FactoryBot.build(:one_roster_guid_ref, type: 'term') }
    children { [FactoryBot.build(:one_roster_guid_ref, type: 'term')] }
    school_year { Faker::Number.between(from: 2000, to: 2100) }
  end

  factory :one_roster_single_academic_session, class: OneRosterClient::SingleAcademicSessionType do
    academic_session { FactoryBot.build(:one_roster_academic_session) }
  end
end
