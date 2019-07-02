require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
    @person1 = Person.new("Stormzy", 22)
    @person2 = Person.new("Aida", 17)
  end

  def test_bus_route_number()
    assert_equal(22, @bus.route_number())
  end

  def test_bus_destination()
    assert_equal("Ocean Terminal", @bus.destination())
  end

  def test_bus_drive()
    assert_equal("Brum brum!", @bus.drive())
  end

  def test_bus_has_empty_passenger_array()
    assert_equal(0, @bus.get_passenger_count())
  end

  def test_bus_add_passenger()
    @bus.add_passenger(@person1)
    assert_equal(1, @bus.get_passenger_count())
  end

  def test_bus_drop_off_passenger()
    @bus.add_passenger(@person1)
    @bus.add_passenger(@person2)
    @bus.drop_off_passenger(@person2)
    assert_equal(1, @bus.get_passenger_count())
  end

  def test_bus_empties_passengers()
    @bus.add_passenger(@person1)
    @bus.add_passenger(@person2)
    @bus.remove_all_passengers()
    assert_equal(0, @bus.get_passenger_count())
  end

  def test_bus_pickup_from_stop()
    @bus_stop = BusStop.new("Ocean Terminal")
    @bus_stop.add_person_to_queue(@person1)
    @bus_stop.add_person_to_queue(@person2)
    @bus.pickup_from_stop(@bus_stop)
    assert(0, @bus_stop.get_queue_length())
    assert(2, @bus.get_passenger_count())
  end

end
