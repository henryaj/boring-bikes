require 'docking_station'

describe "a docking station" do

	let(:docking_station) { DockingStation.new }
	let(:bike) { double :bike }

	it "can dock a bike" do
		docking_station.dock(bike)
		expect(docking_station.has_bikes?).to be true
	end

  it 'can release a bike' do
    docking_station.dock(bike)
    expect(docking_station.release_bike).to be bike
  end

end
