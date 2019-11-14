require "docking_station"

describe DockingStation do

    station = DockingStation.new
    full_station = DockingStation.new
    empty_station = DockingStation.new

    bike = Bike.new
    bike_2 = Bike.new

    station.dock_bike(bike)
    # creating full station:
    (DockingStation::DEFAULT_CAPACITY).times { full_station.dock_bike(bike) }

  # Capacity method, with default
  it { expect(DockingStation.new(35).capacity).to eq (35)}
  it { expect(DockingStation.new.capacity).to eq(DockingStation::DEFAULT_CAPACITY) }




  # testing '#bike_stored'
  it { expect(subject).to respond_to(:bike_stored) }
  it { expect(subject.bike_stored).to be_an_instance_of(Array) }
  # testing '#release_bike'

  it { expect(station).to respond_to(:release_bike) }
  it { expect(station.release_bike).to be_instance_of(Bike) }

  describe "when retrieving a bike" do
    station.dock_bike(Bike.new)
    station.dock_bike(Bike.new)

    puts station.bike_stored.length
    it { expect{
      station.release_bike
    }.to change{ station.bike_stored.length }.by(-1) }
  end

  it { expect(station.release_bike.working?).to eq true }

  # testing '#dock_bike'
  it { expect(DockingStation.new).to respond_to(:dock_bike) }

  it "raising error when trying to release bike from empty docking station" do
    expect { empty_station.release_bike }.to raise_error("No bikes in docking station")
    expect { full_station.dock_bike(bike_2) }.to raise_error("Docking station is full")
  end

  it "should not release a broken bike" do
    bike_3 = Bike.new
    bike_3.break

    # no problem returning broken bikes:
    empty_station.dock_bike(bike_3)

    expect { empty_station.dock_bike(bike_3) }.not_to raise_error
    expect{ empty_station.release_bike }.to raise_error("No working bikes!")
  end
end
