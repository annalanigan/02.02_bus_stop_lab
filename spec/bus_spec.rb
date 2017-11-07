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

  def test_drive_noise
    result = @bus.drive_noise("Phut phut")
    assert_equal("Phut phut", result)
  end

  def test_count_passengers
    assert_equal(0, @bus.passengers.count)
  end

end
