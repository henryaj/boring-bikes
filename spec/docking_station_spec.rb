require 'docking_station'
require 'boris_bikes'

describe 'a docking station' do

let(:bike) { Bike.new }
let(:station) { DockingStation.new }

	it 'starts with no bikes' do
		expect(station.has_bikes?).to be false
	end

	it 'is able to dock a bike' do
		station.dock(bike)
		expect(station.has_bikes?).to be true
	end

	it 'can tell you how many bikes it has' do
		station.dock(bike)
		station.dock(bike)
		expect(station.how_many_bikes).to be 2
	end

	it 'is able to release a bike' do
		station.dock(bike)		
		station.release(bike)
		expect(station.has_bikes?).to be false
	end

	it 'can only dock a bike' do
		expect { station.dock("Rupert the Bear") }.to raise_error
	end

end