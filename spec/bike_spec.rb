require 'bike'

describe 'a bike' do
let(:bike) { Bike.new }
let(:person) {double :person, rent_bike_from: nil}
let(:docking_station) {double :docking_station}

	it 'can be broken' do
		expect(bike.break!).to eq bike
	end

	it "starts off not broken (aka working!" do
		expect(bike.working?).to eq true
	end

  it 'can tell you if it is broken' do
    expect(bike.break!.working?).to eq false
  end

  it "can be fixed when broken" do
    expect(bike.break!.fix!).to eq bike
  end

	it "is no longer broken when it is fixed" do
		expect(bike.break!.fix!.working?).to eq true
	end

	it "should know when it is taken out" do 
		person.rent_bike_from(docking_station)
		expect(bike.timestamp).not_to be nil
	end

end
