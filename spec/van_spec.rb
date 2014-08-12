require 'van'
require 'docking_station'
require 'bike'
require 'garage'

describe Van do
	let(:van) { Van.new(:capacity => 25) }
	west_brompton = DockingStation.new
	super_velo = Bike.new
	black_horse_road = Garage.new

	context "when initialized" do

		it "should have the capacity that it was set with" do
			expect(van.capacity).to eq(25)
		end
	end

	context "travelling around" do

		it "should end up at the docking station was sent to" do
			van.go_to(west_brompton)
			expect(van.location).to be west_brompton
		end
	end

	context "at a docking station" do

		it "should be able to tell the docking station to give it bikes" do
			van.go_to(west_brompton)
			west_brompton.dock(super_velo)
			van.get_bikes
			expect(van.bikes[0]).to be super_velo
		end

		it "should be able to drop off a bike" do
			van.go_to(west_brompton)
			van.dock(super_velo)
			van.drop_bike
			expect(west_brompton.bikes[0]).to be super_velo
		end
	end

	context "at a garage" do

		it "should only drop broken bikes" do
			van.go_to(black_horse_road)
			van.dock(super_velo)
			expect { van.drop_bike }.to raise_error(StandardError, "Garage can only accept broken bikes")
		end
	end
end
