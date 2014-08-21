require 'bike'
require 'timecop'

describe 'a bike' do

	before do
		t = Time.local(1985, 10, 26, 1, 21, 0)
		Timecop.freeze(t)
	end

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

	it "should be able to take a time stamp" do
		bike.set_time_bike_was_hired
		expect(bike.time_bike_was_hired).not_to be nil
	end

	it "keeps a record of the exact time it was hired" do
		test_time  = Time.now
		bike.set_time_bike_was_hired
		expect(bike.time_bike_was_hired).to eq test_time
	end

	after do
		Timecop.return
	end

end
