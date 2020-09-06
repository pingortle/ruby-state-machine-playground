require "minitest/autorun"
require "./lib/traffic_light"

class TestTrafficLight < MiniTest::Test
  def test_it
    light = TrafficLight.new
    assert_kind_of State, light.next_state
  end
end
