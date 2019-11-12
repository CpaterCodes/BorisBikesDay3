require "docking_station"

describe DockingStation do

  it "releases bike" do
    docking_station = DockingStation.new
    docking_station.responds_to(release_bike)
  end
end
