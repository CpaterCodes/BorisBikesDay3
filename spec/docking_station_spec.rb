require "docking_station"

describe DockingStation do

  station = DockingStation.new
  full_station = DockingStation.new
  empty_station = DockingStation.new

  bike = Bike.new
  bike_2 = Bike.new

  station.dock_bike(bike)

  # testing '#release_bike'
  it { expect(station).to respond_to(:release_bike) }
  it { expect(station.release_bike).to be_instance_of(Bike) }
  it { expect(station.release_bike.working?).to eq true }

  # testing '#dock_bike'
  it { expect(DockingStation.new).to respond_to(:dock_bike) }

  # creating full station:
  (DockingStation::DEFAULT_CAPACITY).times { full_station.dock_bike(bike) }

  it "raising error when trying to release bike from empty docking station" do
    expect { empty_station.release_bike }.to raise_error("No bikes in docking station")
    expect { full_station.dock_bike(bike_2)}.to raise_error("Docking station is full")
  end
end
