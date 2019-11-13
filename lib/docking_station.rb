class DockingStation
attr_reader :bike_stored

  def initialize
    @bike_stored = []
  end

def see
  if @bike_stored.length == 0
    puts 'Empty :/'
    return false
  elsif @bike_stored.length == 20
    puts 'Full! :/'
    return true
  end
end

  def release_bike
    if self.see == false
      raise("No bikes in docking station")
    else
      Bike.new
    end
  end

  def dock_bike(bike)
    if self.see == true
      raise("Docking station is full")
    else
      @bike_stored << bike
    end
  end

end
