require 'bike_container'

shared_examples "a bike container" do

	let(:container) { described_class.new }

	it 'starts with no bikes' do
		expect(container.has_bikes?).to be false
	end

	it 'is able to dock a bike' do
		container.dock(bike)
		expect(container.has_bikes?).to be true
	end

	it 'can tell you how many bikes it has' do
		container.dock(bike)
		container.dock(bike)
		expect(container.how_many_bikes).to be 2
	end

	it 'is able to release a bike' do
		container.dock(bike)		
		container.release(bike)
		expect(container.has_bikes?).to be false
	end

	it 'can only dock a bike' do
		expect { container.dock("Rupert the Bear") }.to raise_error
	end

end