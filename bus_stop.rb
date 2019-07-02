class BusStop
  attr_reader :name

  def initialize(name)
    @name = name
    @queue = []
  end

  def get_queue_length()
    return @queue.length()
  end

  def add_person_to_queue(person)
    @queue.unshift(person)
  end

  def get_and_remove_passengers_from_queue()
    leaving_passengers = Array.new(@queue)
    @queue.clear()
    return leaving_passengers
  end

end
