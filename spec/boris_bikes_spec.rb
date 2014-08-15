require 'boris_bikes'

describe 'a bike' do 

	let(:bike) { Bike.new }

	it 'will create a bike to be working' do
		expect(bike.working?).to eq true
	end

	it 'is broken when it breaks' do
		bike.break!
		expect(bike.working?).to be false
	end

	it 'is fixed when it gets fixed' do
		bike.fixed!
		expect(bike.working?).to be true
	end

end