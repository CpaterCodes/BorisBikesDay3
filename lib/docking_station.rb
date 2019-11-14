class DockingStation
attr_reader :bike_stored

  def initialize
    @bike_stored = []
  end

  def release_bike
    if self.empty?
      raise("No bikes in docking station")
    else
      Bike.new
    end
  end

  def dock_bike(bike)
    if self.full?
      raise("Docking station is full")
    else
      @bike_stored << bike
    end
  end

  def full?
    if @bike_stored.length == 20
      puts 'Full! :/'
      return true
    else
      return false
    end
  end

  def empty?
    if @bike_stored.length == 0
      puts 'Empty :/'
      return true
    else
      return false
    end
  end

end
