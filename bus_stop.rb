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
  
end
