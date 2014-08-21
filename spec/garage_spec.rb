require 'garage'

describe Garage do

	it_behaves_like 'a bike container'

	it 'can receive a lot of broken bikes in one go' do
		garage = Garage.new
		bike = double :bike
		van = double :van
		expect(van).to receive(:dump_broken_bikes).and_return([bike,bike,bike])
		expect(garage.receive_bikes_from(van)).to be nil
	end



end
