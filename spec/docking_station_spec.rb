require 'docking_station'
require 'bike'

describe DockingStation do
	it_behaves_like "a bike container"

	let(:station) {DockingStation.new(:capacity => 999)}

	it "should allow setting a specific capacity upon init" do
		expect(station.capacity).to eq(999)
	end

end