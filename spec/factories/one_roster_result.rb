# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :one_roster_result, class: OneRosterClient::ResultType do
    sourced_id { SecureRandom.uuid }
    status { 'active' }
    date_last_modified { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    metadata do
      {
        StrongMind: {
          last_activity_at: Faker::Time.backward(days: 1),
          total_activity_time: Faker::Number.number(digits: 5)
        }
      }
    end
    line_item { FactoryBot.build(:one_roster_guid_ref, type: 'lineItem') }
    student { FactoryBot.build(:one_roster_guid_ref, type: 'user') }
    score_status { ['exempt', 'partially graded', 'fully graded', 'not submitted', 'submitted'].sample }
    score { Faker::Number.decimal(l_digits: 2, r_digits: 1) }
    score_date { Faker::Time.backward(days: 1) }
    initialize_with { attributes }
  end

  factory :one_roster_single_result, class: OneRosterClient::SingleResultType do
    result { FactoryBot.build(:one_roster_result) }
  end
end
