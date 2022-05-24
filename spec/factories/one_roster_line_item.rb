# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :one_roster_line_item, class: OneRosterClient::LineItemType do
    sourced_id { SecureRandom.uuid }
    status { 'active' }
    date_last_modified { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    title { ['Current Grade', 'Final Grade'].sample }
    assign_date { Faker::Time.backward(days: 5) }
    due_date { Faker::Time.backward(days: 5) }
    _class { FactoryBot.build(:one_roster_guid_ref, type: 'class') }
    category { FactoryBot.build(:one_roster_guid_ref, type: 'category') }
    grading_period { FactoryBot.build(:one_roster_guid_ref, type: 'academicSession') }
    result_value_min { Faker::Number.decimal(l_digits: 2, r_digits: 1) }
    result_value_max { Faker::Number.decimal(l_digits: 2, r_digits: 1) }
  end

  factory :one_roster_single_line_item, class: OneRosterClient::SingleLineItemType do
    line_item { FactoryBot.build(:one_roster_line_item) }
  end
end
