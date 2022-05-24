# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :one_roster_demographic, class: OneRosterClient::DemographicType do
    sourced_id { SecureRandom.uuid }
    status { 'active' }
    date_last_modified { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now).to_s }
    metadata { {} }
    birth_date { Faker::Date.backward(days: 50).to_s }
    sex { %w[male female].sample }
    american_indian_or_alaska_native { [true, false].sample }
    asian { [true, false].sample }
    black_or_african_american { [true, false].sample }
    native_hawaiian_or_other_pacific_islander { [true, false].sample }
    white { [true, false].sample }
    demographic_race_two_or_more_races { [true, false].sample }
    hispanic_or_latino_ethnicity { [true, false].sample }
    country_of_birth_code { '123' }
    state_of_birth_abbreviation { 'AZ' }
    city_of_birth { 'Chandler' }
    public_school_residence_status { '012345' }
  end

  factory :one_roster_single_demographic, class: OneRosterClient::SingleDemographicsType do
    demographics { FactoryBot.build(:one_roster_demographic) }
  end
end
