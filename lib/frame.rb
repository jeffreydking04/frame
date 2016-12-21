require "frame/version"

module Frame
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'}, ["Hello World"]]
    end
  end
end
