class Bus

  attr_reader :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum!"
  end

  def get_passenger_count()
    return @passengers.length()
  end

  def add_passenger(person)
    @passengers << person
  end

  def drop_off_passenger(person)
    @passengers.delete(person)
  end

  def remove_all_passengers()
    @passengers.clear()
  end

  def pickup_from_stop(bus_stop)
    new_passengers = bus_stop.get_and_remove_passengers_from_queue()
    @passengers += new_passengers
    p @passengers
  end

end
