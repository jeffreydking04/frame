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
      if stuff[2]
        text = thing.method(stuff[1].to_sym).call(stuff[2])
      else
        text = thing.method(stuff[1].to_sym).call
      end
      [200, {'Content-Type' => 'text/html'}, [text]]
    end
  end
end
