require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class TestBus < MiniTest::Test

  def setup
    @person1 = Person.new("Hilary", 68)
    @person2 = Person.new("Barack", 57)
    @person3 = Person.new("Sofia", 10)
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

  def test_pick_up
    @bus.pick_up(@person1)
    assert_equal(1, @bus.passengers.count)
  end

  def test_drop_off
    @bus.pick_up(@person1)
    @bus.pick_up(@person2)
    @bus.drop_off(@person2)
    assert_equal(1, @bus.passengers.count)
  end

  def test_empty_bus
    @bus.pick_up(@person1)
    @bus.pick_up(@person2)
    @bus.pick_up(@person3)
    @bus.empty_bus
    assert_equal(0, @bus.passengers.count)
  end
end
