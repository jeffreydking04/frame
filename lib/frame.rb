require "frame/version"
require "frame/dependencies"
require 'frame/controller'

module Frame
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'}, ["Hello World"]]
    end
  end
end
