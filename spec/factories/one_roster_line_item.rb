# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :one_roster_line_item, class: OneRosterClient::LineItemType do
    sourced_id { SecureRandom.uuid }
    status { 'active' }
    date_last_modified { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now).to_s }
    title { ['Current Grade', 'Final Grade'].sample }
    assign_date { Faker::Time.backward(days: 5).to_s }
    due_date { Faker::Time.forward(days: 5).to_s }
    _class { FactoryBot.build(:one_roster_guid_ref, type: 'class') }
    category { FactoryBot.build(:one_roster_guid_ref, type: 'category') }
    grading_period { FactoryBot.build(:one_roster_guid_ref, type: 'academicSession') }
    result_value_min { Faker::Number.decimal(l_digits: 2, r_digits: 1).to_s }
    result_value_max { Faker::Number.decimal(l_digits: 2, r_digits: 1).to_s }
  end

  factory :one_roster_single_line_item, class: OneRosterClient::SingleLineItemType do
    line_item { FactoryBot.build(:one_roster_line_item) }
  end
end
