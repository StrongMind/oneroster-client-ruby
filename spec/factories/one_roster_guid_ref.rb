# frozen_string_literal: true

FactoryBot.define do
  factory :one_roster_guid_ref, class: OneRosterClient::GUIDRefType do
    href = Faker::Internet.url
    sourced_id { SecureRandom.uuid }
    type do
      %w[academicSession category class course demographics enrollment lineItem org resource result student teacher user
         term gradingPeriod].sample
    end
    initialize_with { attributes }
  end
end
