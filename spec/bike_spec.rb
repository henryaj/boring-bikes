require 'bike'

describe 'a bike' do
let(:bike) { Bike.new }

	it 'can be broken' do
		expect(bike.break!).to eq bike
	end

  it 'can tell you if it is broken' do
    expect(bike.break!.working?).to eq false
  end

	it "starts off not broken (aka working!" do
		expect(bike.working?).to eq true
	end

  it "can be fixed when broken" do
    expect(bike.break!.fix!).to eq true
  end

end
