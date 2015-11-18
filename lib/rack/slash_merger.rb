module Rack
  class SlashMerger
    PATTERN = %r{//+}

    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] =~ PATTERN
        env['PATH_INFO'].gsub!(PATTERN, '/')
        [301, {"Location" => Rack::Request.new(env).url, "Content-Type" => ""}, []]
      else
        @app.call(env)
      end
    end
  end
end