require 'van'
require 'docking_station'
require 'bike'

describe Van do
	let(:van) { Van.new(:capacity => 25) }
	let(:station) { DockingStation.new }
	let(:bike) { Bike.new }
	let(:garage) { Garage.new }

	context "intitialization tests" do

		it "it has the capacity it is initialized with" do
			expect(van.capacity).to eq(25)
		end
	end

	context "travelling around" do

		it "should be at the docking station it goes to" do
			kings_cross = DockingStation.new
			van.go_to(kings_cross)
			expect(van.location).to be kings_cross
		end
	end

	context "picking up and dropping bikes off" do
			west_brompton = DockingStation.new
			super_velo = Bike.new
			van.go_to(west_brompton)

		it "should be able to tell a docking station to give it bikes" do
			west_brompton.dock(super_velo)
			van.get_bikes
			expect(van.bikes[0]).to be super_velo
		end

		it "should be able to drop off a bike at a docking station" do
			van.dock(super_velo)
			van.drop_bike
			expect(south_kensington.bikes[0]).to be super_velo
		end

		it "should only drop broken bikes to a garage" do
			van.dock(super_velo)
			expect { van.drop_bike(garage) }.to raise_error(StandardError, "Garage can only accept broken bikes")
		end
	end
end
