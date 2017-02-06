module Frame
  class Application
    def controller_and_action(env)
      _, controller, action, id, _ = env['PATH_INFO'].split('/', 4)
      controller = controller.capitalize
      controller = "#{controller}Controller"
      if id
        [Object.const_get(controller), action, id]
      else
        [Object.const_get(controller), action]
      end
    end

    def fav_icon(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404, {'Content-Type' => 'text/html'}, []]
      end
    end
  end
end