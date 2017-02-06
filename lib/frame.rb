require "frame/version"
require "frame/utility"
require "frame/router"
require "frame/dependencies"
require 'frame/controller'

module Frame
  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404, {'Content-Type' => 'text/html'}, []]
      end

      rack_app = get_rack_app(env)
      rack_app.call(env)
    end
  end
end
