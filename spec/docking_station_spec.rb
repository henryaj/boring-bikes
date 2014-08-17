require 'docking_station'
require 'boris_bikes'

describe DockingStation do


	let(:bike) { Bike.new }
	let(:station) { DockingStation.new }

	it_behaves_like "a bike container"

end