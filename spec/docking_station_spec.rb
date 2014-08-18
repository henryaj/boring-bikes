require 'docking_station'

describe "a docking station" do

	let(:richmond_station) { DockingStation.new }
	let(:bike) { double :bike }

	it "can dock a bike" do
		richmond_station.dock(bike)
		expect(richmond_station.has_bikes?).to be true
	end
end
