require "docking_station"

describe 'DockingStation' do
    station = DockingStation.new
    bike = Bike.new
    station.dock_bike(bike)
    it { expect(station).to respond_to(:release_bike) }
    it { expect(station.release_bike).to be_instance_of(Bike) }
    it { expect(station.release_bike.working?).to eq true }
end

describe 'DockingStation' do
  it { expect(DockingStation.new).to respond_to(:dock_bike) }
end

describe 'DockingStation' do
  station = DockingStation.new
  bike = Bike.new
  station_2 = DockingStation.new
  station_2.dock_bike(bike)
end

describe 'DockingStation' do
  station = DockingStation.new
  bike = Bike.new
  station_2 = DockingStation.new
  station_2.dock_bike(bike)
  bike_2 = Bike.new
  station_3 = DockingStation.new
  20.times { station_3.dock_bike(Bike.new) }
  it "raising error when trying to release bike from empty docking station" do
    expect { station.release_bike }.to raise_error("No bikes in docking station")
    expect { station_3.dock_bike(bike_2)}.to raise_error("Docking station is full")
  end
end
