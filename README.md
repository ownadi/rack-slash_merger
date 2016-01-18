# rack-slash_merger [![Build Status](https://travis-ci.org/ownadi/rack-slash_merger.svg?branch=master)](https://travis-ci.org/ownadi/rack-slash_merger) [![Gem Version](https://badge.fury.io/rb/rack-slash_merger.png)](https://badge.fury.io/rb/rack-slash_merger)

A rack middleware for compressing of two or more adjacent slashes in a URI into a single slash.

## Usage

### Rails

Just add the gem to your gemfile and run bundle

```ruby
gem 'rack-slash_merger'
```

Then restart your Rails server. No configuration is needed. The gem simply hooks itself into the Rack middleware call stack.

### Other rack-based application

In your Gemfile add the gem

```ruby
gem 'rack-slash_merger'
```

Add middleware to stack:

```ruby
# config.ru
require 'rack/slash_merger'
use Rack::SlashMerger
```

## License

MIT License. Copyright 2015 Adrian Lehmann
