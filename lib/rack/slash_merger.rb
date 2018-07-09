module Rack
  class SlashMerger
    PATTERN = %r{//+}

    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] =~ PATTERN
        new_env = env.merge('PATH_INFO' => env['PATH_INFO'].gsub(PATTERN, '/'))
        [301, {"Location" => Rack::Request.new(new_env).url, "Content-Type" => ""}, []]
      else
        @app.call(env)
      end
    end
  end
end
