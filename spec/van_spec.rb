require 'van'
require 'docking_station'
require 'bike'

describe Van do
	let(:van) { Van.new(:capacity => 25) }
	let(:station) { DockingStation.new }
	let(:bike) { Bike.new }

	context "intitialization tests" do

		it "it has the capacity it is initialized with" do
			expect(van.capacity).to eq(25)
		end
	end

		it "should be at the docking staion it goes to" do
			kings_cross = DockingStation.new
			van.go_to(kings_cross)
			expect(van.location).to be kings_cross
		end
	end

	context "picking up and dropping bikes off" do

		it "should be able to tell a docking station to give it bikes" do
			west_brompton = DockingSation.new
			super_velo = Bike.new
			west_brompton.dock(super_velo)
			van.go_to(west_brompton)
			van.get_bikes
			expect(van.bikes[0]).to be super_velo
		end

	end
