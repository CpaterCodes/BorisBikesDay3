class DockingStation
attr_reader :bike_stored

  def initialize
    @bike_stored = []
  end

def see
  if @bike_stored.length == 0
    puts 'Empty :/'
    return false
  else
    puts 'Bike! :D'
    return true
  end
end

  def release_bike
    if self.see == false
      raise("No bikes in docking station")
    end
    Bike.new
  end

  def dock_bike(bike)
    @bike_stored << bike
  end
end
