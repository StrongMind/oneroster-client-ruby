=begin
#OneRoster OpenAPI (JSON) Definition

#The OneRoster service binding is available in WSDL/XSD and REST/JSON. The model is based upon the IMS PSM modelling approach.

OpenAPI spec version: 1.1
Contact: platform@strongmind.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'

describe OneRosterClient::ApiClient do
  context 'initialization' do
    context 'URL stuff' do
      context 'host' do
        it 'removes http from host' do
          OneRosterClient.configure { |c| c.host = 'http://example.com' }
          expect(OneRosterClient::Configuration.default.host).to eq('example.com')
        end

        it 'removes https from host' do
          OneRosterClient.configure { |c| c.host = 'https://wookiee.com' }
          expect(OneRosterClient::ApiClient.default.config.host).to eq('wookiee.com')
        end

        it 'removes trailing path from host' do
          OneRosterClient.configure { |c| c.host = 'hobo.com/v4' }
          expect(OneRosterClient::Configuration.default.host).to eq('hobo.com')
        end
      end

      context 'base_path' do
        it "prepends a slash to base_path" do
          OneRosterClient.configure { |c| c.base_path = 'v4/dog' }
          expect(OneRosterClient::Configuration.default.base_path).to eq('/v4/dog')
        end

        it "doesn't prepend a slash if one is already there" do
          OneRosterClient.configure { |c| c.base_path = '/v4/dog' }
          expect(OneRosterClient::Configuration.default.base_path).to eq('/v4/dog')
        end

        it "ends up as a blank string if nil" do
          OneRosterClient.configure { |c| c.base_path = nil }
          expect(OneRosterClient::Configuration.default.base_path).to eq('')
        end
      end
    end
  end

  describe 'params_encoding in #build_request' do
    let(:config) { OneRosterClient::Configuration.new }
    let(:api_client) { OneRosterClient::ApiClient.new(config) }

    it 'defaults to nil' do
      expect(OneRosterClient::Configuration.default.params_encoding).to eq(nil)
      expect(config.params_encoding).to eq(nil)

      request = api_client.build_request(:get, '/test')
      expect(request.options[:params_encoding]).to eq(nil)
    end

    it 'can be customized' do
      config.params_encoding = :multi
      request = api_client.build_request(:get, '/test')
      expect(request.options[:params_encoding]).to eq(:multi)
    end
  end

  describe 'timeout in #build_request' do
    let(:config) { OneRosterClient::Configuration.new }
    let(:api_client) { OneRosterClient::ApiClient.new(config) }

    it 'defaults to 0' do
      expect(OneRosterClient::Configuration.default.timeout).to eq(0)
      expect(config.timeout).to eq(0)

      request = api_client.build_request(:get, '/test')
      expect(request.options[:timeout]).to eq(0)
    end

    it 'can be customized' do
      config.timeout = 100
      request = api_client.build_request(:get, '/test')
      expect(request.options[:timeout]).to eq(100)
    end
  end

  describe '#deserialize' do
    it "handles Array<Integer>" do
      api_client = OneRosterClient::ApiClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '[12, 34]')
      data = api_client.deserialize(response, 'Array<Integer>')
      expect(data).to be_instance_of(Array)
      expect(data).to eq([12, 34])
    end

    it 'handles Array<Array<Integer>>' do
      api_client = OneRosterClient::ApiClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '[[12, 34], [56]]')
      data = api_client.deserialize(response, 'Array<Array<Integer>>')
      expect(data).to be_instance_of(Array)
      expect(data).to eq([[12, 34], [56]])
    end

    it 'handles Hash<String, String>' do
      api_client = OneRosterClient::ApiClient.new
      headers = { 'Content-Type' => 'application/json' }
      response = double('response', headers: headers, body: '{"message": "Hello"}')
      data = api_client.deserialize(response, 'Hash<String, String>')
      expect(data).to be_instance_of(Hash)
      expect(data).to eq(:message => 'Hello')
    end
  end

  describe "#object_to_hash" do
    it 'ignores nils and includes empty arrays' do
      # uncomment below to test object_to_hash for model
      # api_client = OneRosterClient::ApiClient.new
      # _model = OneRosterClient::ModelName.new
      # update the model attribute below
      # _model.id = 1
      # update the expected value (hash) below
      # expected = {id: 1, name: '', tags: []}
      # expect(api_client.object_to_hash(_model)).to eq(expected)
    end
  end

  describe '#build_collection_param' do
    let(:param) { ['aa', 'bb', 'cc'] }
    let(:api_client) { OneRosterClient::ApiClient.new }

    it 'works for csv' do
      expect(api_client.build_collection_param(param, :csv)).to eq('aa,bb,cc')
    end

    it 'works for ssv' do
      expect(api_client.build_collection_param(param, :ssv)).to eq('aa bb cc')
    end

    it 'works for tsv' do
      expect(api_client.build_collection_param(param, :tsv)).to eq("aa\tbb\tcc")
    end

    it 'works for pipes' do
      expect(api_client.build_collection_param(param, :pipes)).to eq('aa|bb|cc')
    end

    it 'works for multi' do
      expect(api_client.build_collection_param(param, :multi)).to eq(['aa', 'bb', 'cc'])
    end

    it 'fails for invalid collection format' do
      expect(proc { api_client.build_collection_param(param, :INVALID) }).to raise_error(RuntimeError, 'unknown collection format: :INVALID')
    end
  end

  describe '#json_mime?' do
    let(:api_client) { OneRosterClient::ApiClient.new }

    it 'works' do
      expect(api_client.json_mime?(nil)).to eq false
      expect(api_client.json_mime?('')).to eq false

      expect(api_client.json_mime?('application/json')).to eq true
      expect(api_client.json_mime?('application/json; charset=UTF8')).to eq true
      expect(api_client.json_mime?('APPLICATION/JSON')).to eq true

      expect(api_client.json_mime?('application/xml')).to eq false
      expect(api_client.json_mime?('text/plain')).to eq false
      expect(api_client.json_mime?('application/jsonp')).to eq false
    end
  end

  describe '#select_header_accept' do
    let(:api_client) { OneRosterClient::ApiClient.new }

    it 'works' do
      expect(api_client.select_header_accept(nil)).to be_nil
      expect(api_client.select_header_accept([])).to be_nil

      expect(api_client.select_header_accept(['application/json'])).to eq('application/json')
      expect(api_client.select_header_accept(['application/xml', 'application/json; charset=UTF8'])).to eq('application/json; charset=UTF8')
      expect(api_client.select_header_accept(['APPLICATION/JSON', 'text/html'])).to eq('APPLICATION/JSON')

      expect(api_client.select_header_accept(['application/xml'])).to eq('application/xml')
      expect(api_client.select_header_accept(['text/html', 'application/xml'])).to eq('text/html,application/xml')
    end
  end

  describe '#select_header_content_type' do
    let(:api_client) { OneRosterClient::ApiClient.new }

    it 'works' do
      expect(api_client.select_header_content_type(nil)).to eq('application/json')
      expect(api_client.select_header_content_type([])).to eq('application/json')

      expect(api_client.select_header_content_type(['application/json'])).to eq('application/json')
      expect(api_client.select_header_content_type(['application/xml', 'application/json; charset=UTF8'])).to eq('application/json; charset=UTF8')
      expect(api_client.select_header_content_type(['APPLICATION/JSON', 'text/html'])).to eq('APPLICATION/JSON')
      expect(api_client.select_header_content_type(['application/xml'])).to eq('application/xml')
      expect(api_client.select_header_content_type(['text/plain', 'application/xml'])).to eq('text/plain')
    end
  end

  describe '#sanitize_filename' do
    let(:api_client) { OneRosterClient::ApiClient.new }

    it 'works' do
      expect(api_client.sanitize_filename('sun')).to eq('sun')
      expect(api_client.sanitize_filename('sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('../sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('/var/tmp/sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('./sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('..\sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('\var\tmp\sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('c:\var\tmp\sun.gif')).to eq('sun.gif')
      expect(api_client.sanitize_filename('.\sun.gif')).to eq('sun.gif')
    end
  end

  describe '#call_api' do
    let(:api_client) { OneRosterClient::ApiClient.new }

    before do
      @path = Faker::Lorem.word
      @url = api_client.config.base_url + '/' + @path
    end

    it 'makes request' do
      response = Typhoeus::Response.new(code: 200)
      Typhoeus.stub(@url).and_return(response)
      _, status_code, headers = api_client.call_api('GET', @path, {})
      expect(status_code).to eq(200)
      expect(headers).to eq(response.headers)
    end

    it 'raises server errors' do
      code = rand(500..600)
      response = Typhoeus::Response.new(code:)
      Typhoeus.stub(@url).and_return(response)
      expect { api_client.call_api('GET', @path, {}) }.to raise_error(OneRosterClient::ServerError)
    end

    it 'raises client errors' do
      code = rand(400..500)
      response = Typhoeus::Response.new(code:)
      Typhoeus.stub(@url).and_return(response)
      expect { api_client.call_api('GET', @path, {}) }.to raise_error(OneRosterClient::ClientError)
    end

  end
end
