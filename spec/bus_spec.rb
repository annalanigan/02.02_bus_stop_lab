require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")

class TestBus < MiniTest::Test

  def setup
      @bus = Bus.new(62, "Peebles")
  end

  def test_bus_destination
    assert_equal("Peebles", @bus.destination)
  end

  def test_bus_route_number
    assert_equal(62, @bus.route_number)
  end


end
