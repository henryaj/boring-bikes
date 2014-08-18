require 'bike'

describe 'a bike' do

	it 'can be broken' do
		expect(bike.break!).to eq bike
	end
end
