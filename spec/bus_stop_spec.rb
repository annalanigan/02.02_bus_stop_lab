require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop.rb")
require_relative("../person.rb")

class TestBusStop < MiniTest::Test

  def setup
    @bus_stop1 = BusStop.new("Penicuik")
    @person2 = Person.new("Barack", 57)
    @person3 = Person.new("Sofia", 10)
  end

  def test_bus_stop_name
    assert_equal("Penicuik", @bus_stop1.name)
  end

  def test_add_to_queue
    @bus_stop1.add_to_queue(@person2)
    @bus_stop1.add_to_queue(@person3)
    assert_equal(2, @bus_stop1.queue.count)
  end

end
