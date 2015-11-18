require_relative 'lib/rack/slash_merger/version'

Gem::Specification.new do |s|
  s.name = 'rack-slash_merger'
  s.version = Rack::SlashMerger::VERSION
  s.summary = 'Rack-based slash merger'
  s.description = 'Rack-based compression of two or more adjacent slashes in a URI into a single slash.'
  s.files = `git ls-files`.split('\n')
  s.require_path = 'lib'
  s.author = 'Adrian Lehmann'
  s.email = 'ownadi@gmail.com'
  s.homepage = 'https://github.com/ownadi/rack-slash_merger'
  s.license = 'MIT'
  s.add_dependency 'rack'
  s.add_development_dependency 'rspec'
end