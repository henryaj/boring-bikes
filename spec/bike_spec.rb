require 'bike'

describe 'a bike' do
let(:bike) { Bike.new }

	it 'can be broken' do
		expect(bike.break!).to eq bike
	end

  it 'can tell you if it is broken' do
    expect(bike.break!.broken?).to eq true
  end

	it "starts off not broken (aka working!" do
		expect(bike.broken?).to eq false
	end
end
