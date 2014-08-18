require 'bike'

describe 'a bike' do

	it 'can be broken' do
		bike = Bike.new
		expect(bike.break!).to eq bike
	end

  it 'can tell you if it is broken' do
    expect(bike.break!.broken?).to eq true
  end
end
