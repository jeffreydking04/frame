require "frame/version"
require "frame/utility"
require "frame/router"
require "frame/dependencies"
require 'frame/controller'

module Frame
  class Application
    def call(env)
      stuff = controller_and_action(env)
      thing = stuff[0].new(env)
      text = thing.method(stuff[1].to_sym).call
      [200, {'Content-Type' => 'text/html'}, [text]]
    end
  end
end
