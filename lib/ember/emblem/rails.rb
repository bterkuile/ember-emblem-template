module Ember
  module Emblem
    module Rails
      class Engine < ::Rails::Engine
        initializer "ember_rails.setup", after: :append_assets_path, group: :all do |app|
          app.config.assets.configure do |env|
            env.register_engine '.emblem', Ember::Emblem::Template, mime_type: 'application/javascript'
          end
        end
      end
    end
  end
end
