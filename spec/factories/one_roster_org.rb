# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :one_roster_org, class: OneRosterClient::OrgType do
    sourced_id { SecureRandom.uuid }
    status { 'active' }
    date_last_modified { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    metadata do
      {
        'StrongMind' => {
          'canvas_domain' => Faker::Internet.domain_name,
          'canvas_account' => Faker::Number.number(digits: 1),
          'powerschool_domain' => Faker::Internet.domain_name,
          'powerschool_dcid' => Faker::Number.number(digits: 2),
          'powerschool_school_number' => Faker::Number.number(digits: 3),
          'canvas_account_uuid' => Faker::Lorem.characters(number: 20),
          'group_label' => Faker::Lorem.word,
          'roster_source' => Faker::Lorem.word
        }
      }
    end
    name { Faker::Lorem.word }
    identifier { Faker::Lorem.word }
    type { 'school' }
    initialize_with { attributes }
  end

  factory :one_roster_single_org, class: OneRosterClient::SingleOrgType do
    org { FactoryBot.build(:one_roster_org) }
  end
end
