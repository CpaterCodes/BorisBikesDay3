require "docking_station"

RSpec.describe DockingStation.new do
  describe 'releases bike' do
    it { responds_to(release_bike) }
  end
end
