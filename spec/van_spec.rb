require 'van'
require 'boris_bikes'
require 'docking_station'

describe Van do

	let(:van) { Van.new }
	let(:bike) { Bike.new }
	let(:station) { DockingStation.new }
	let(:garage) { Garage.new }

	it_behaves_like "a bike container"

	it 'can travel to a docking station' do
		van.go_to(station)
		expect(van.location).to be station
	end

	it 'can travel to a garage' do 
		van.go_to(garage)
		expect(van.location).to be garage
	end

end