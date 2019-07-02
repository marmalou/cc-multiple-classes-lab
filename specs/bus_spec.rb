require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
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

end
