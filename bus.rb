class Bus
  attr_reader :route_number, :destination
  attr_accessor :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive_noise(noise)
    return noise
  end

  def pick_up(person)
    @passengers << person
  end

  def drop_off(person)
    remaining_passengers = []
    for passenger in @passengers
      if passenger != person
        remaining_passengers << person
      end
    end
    @passengers = remaining_passengers
  end

  

end
