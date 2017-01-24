require 'test/unit'
require "rack/test"
require '../lib/frame'

class HomepageTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Frame::Application.new
  end

  def test_call
    app.call
    assert last_response.ok?
  end

end

test = HomepageTest.new(0)
puts test.test_call