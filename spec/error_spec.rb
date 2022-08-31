# frozen_string_literal: true

require 'spec_helper'
require 'faker'

RSpec.describe OneRosterClient::ServerError do
  describe '.initialize' do
    subject { described_class.new(response, message) }
    let(:message) { nil }

    context 'with message only' do
      let(:response) { nil }
      let(:message) { Faker::Lorem.sentence }

      it { expect(subject.dependency_name).to eq('OneRoster')}
      it { expect(subject.message).to eq(message)}
      it { expect(subject.response[:status]).to eq(nil)}
    end

    context 'with response only' do
      response_headers = { 'Content-Type': Faker::Lorem.word }
      body = Faker::Lorem.sentence
      let(:response) { Typhoeus::Response.new({code: 500, response_headers:, body:})}
      it { expect(subject.dependency_name).to eq('OneRoster')}
      it { expect(subject.response[:status]).to eq(500)}
      it { expect(subject.response[:headers]).to eq(response_headers)}
      it { expect(subject.response[:body]).to eq(body)}
    end

    context 'with response that has request' do
      headers = { 'Content-Type': Faker::Lorem.word }
      body = Faker::Lorem.sentence
      url = Faker::Internet.url
      req_opts = {
        :method => 'POST',
        :headers => headers,
        :body => Faker::Lorem.sentence
      }
      let(:response) {
        resp = Typhoeus::Response.new(code: 500, response_headers: headers, body:)
        resp.request = Typhoeus::Request.new(url, options = req_opts)
        resp
      }
      it { expect(subject.dependency_name).to eq('OneRoster')}
      it { expect(subject.response[:status]).to eq(500)}
      it { expect(subject.response[:headers]).to eq(headers)}
      it { expect(subject.response[:body]).to eq(body)}
      it { expect(subject.response[:request]).to_not eq(nil)}
      it { expect(subject.response[:request][:url]).to eq(url)}
      it { expect(subject.response[:request][:method]).to eq(req_opts[:method])}
      it { expect(subject.response[:request][:headers]).to_not eq(nil)}
      it { expect(subject.response[:request][:body]).to eq(req_opts[:body])}
    end
  end
end
