require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop')
require_relative('../person')

class BusStopTest < MiniTest::Test
  def setup()
    @bus_stop = BusStop.new("Ferry Road")
    @person1 = Person.new("Stormzy", 22)
  end

  def test_stop_has_name()
    assert_equal("Ferry Road", @bus_stop.name())
  end

  def test_add_person_to_queue()
    @bus_stop.add_person_to_queue(@person1)
    assert_equal(1, @bus_stop.get_queue_length())
  end

end
