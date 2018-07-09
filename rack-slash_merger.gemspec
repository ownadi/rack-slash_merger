require(File.expand_path('lib/rack/slash_merger/version', File.dirname(__FILE__)))

Gem::Specification.new do |s|
  s.name = 'rack-slash_merger'
  s.version = Rack::SlashMerger::VERSION
  s.required_ruby_version = '>= 1.9.3'
  s.summary = 'Rack-based slash merger'
  s.description = 'Rack-based compression of two or more adjacent slashes in a URI into a single slash.'
  s.files = `git ls-files`.split($/)
  s.require_path = 'lib'
  s.author = 'Adrian Lehmann'
  s.email = 'ownadi@gmail.com'
  s.homepage = 'https://github.com/ownadi/rack-slash_merger'
  s.license = 'MIT'
  s.add_dependency 'rack', '>= 0.4'
  s.add_development_dependency 'rspec'
  if railties_version = ENV['TEST_RAILTIES_VERSION']
    s.add_development_dependency 'combustion', '~> 0.9.1'
    s.add_development_dependency 'railties', railties_version
  end
end
