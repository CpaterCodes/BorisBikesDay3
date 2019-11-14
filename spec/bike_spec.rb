require "bike"

describe Bike do
    it { expect(Bike.new).to respond_to(:working?) }

    it "should report when it is broken" do
        test_bike = Bike.new
        test_bike.break
        expect(test_bike.working?).to be false
    end

end
