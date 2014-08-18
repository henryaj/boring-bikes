require 'bike'

describe 'a bike' do

	it 'can be broken' do
		bike = Bike.new
		expect(bike.break!).to eq bike
	end
end
