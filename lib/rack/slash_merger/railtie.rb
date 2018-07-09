module Rack
  class SlashMerger
    class Railtie < ::Rails::Railtie
      initializer 'slash_merger.insert_middleware' do |app|
        app.middleware.use "Rack::SlashMerger"
      end
    end
  end
end
