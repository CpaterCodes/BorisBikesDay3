require "docking_station"

describe 'DockingStation' do
    it { expect(DockingStation.new).to respond_to(:release_bike) }
    it { expect(DockingStation.new.release_bike).to be_instance_of(Bike) }
    it { expect(DockingStation.new.release_bike.working?).to eq true }
end

describe 'DockingStation' do
  it { expect(DockingStation.new).to respond_to(:dock_bike) }
end

describe 'DockingStation' do
  station = DockingStation.new
  bike = Bike.new
  station_2 = DockingStation.new
  station_2.dock_bike(bike)
  it { expect(station.see).to eq false }
  it { expect(station_2.see).to eq true }
end
