require 'garage'

describe Garage do

let(:garage) {Garage.new}
let(:van) {double :van, dump_broken_bikes: nil}
let(:bike) {double :bike, class: Bike, fix!: nil}


	it_behaves_like 'a bike container'

	it 'can receive a lot of broken bikes in one go' do
		expect(van).to receive(:dump_broken_bikes).and_return([bike,bike,bike])
		expect(garage.receive_bikes_from(van)).to be nil
	end

	it "it can fix broken bikes" do
		expect(bike).to receive(:fix!)
		garage.dock_bike(bike)
		garage.fix!
	end

	it 'fixes the bikes when they come in' do
		allow(van).to receive(:dump_broken_bikes).and_return([bike,bike,bike])
		expect(bike).to receive(:fix!).exactly(3).times
		garage.receive_bikes_from(van)
	end

end
