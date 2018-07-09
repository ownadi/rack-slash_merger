require 'rack/mock'
require_relative '../lib/rack/slash_merger'

describe Rack::SlashMerger do
  let(:app) { proc{[200, {}, ['Hello, world.']]} }
  let(:stack) { Rack::SlashMerger.new(app) }
  let(:request) { Rack::MockRequest.new(stack) }

  context 'when uri contains two or more adjacent slashes' do
    let(:response) { request.get('/p/a//t///h') }
    it { expect(response.status).to eql(301) }
    it { expect(response.headers['Location']).to include('/p/a/t/h')}
  end

  context 'when uri does not contain two or more adjacent slashes' do
    let(:response) { request.get('/p/a/t/h') }
    it { expect(response.status).to eql(200) }
  end
end

if ENV['TEST_RAILTIES_VERSION']
  require 'combustion'

  Combustion.initialize!

  describe Rack::SlashMerger::Railtie do
    it { expect(Rails.configuration.middleware.map(&:name)).to include("Rack::SlashMerger") }
  end
end
