require 'docking_station'

describe "a docking station" do

	let(:docking_station) { DockingStation.new }
	let(:bike) { double :bike }
	let(:broken_bike) { double :bike, working?: false }

	it "can dock a bike" do
		docking_station.dock_bike(bike)
		expect(docking_station.has_bikes?).to be true
	end

  it 'can release a bike' do
    docking_station.dock_bike(bike)
    expect(docking_station.release_bike).to be bike
  end

	it 'knows if it has got available bikes (like, working ones)' do
		docking_station.dock_bike(broken_bike)
		expect(docking_station.available?).to be false
	end

end
