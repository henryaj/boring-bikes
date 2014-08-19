require 'van'

describe 'a van' do
	let(:working_bike) { double :bike, working?: true }
	let(:bike) { double :bike }
	let(:van) { Van.new }

	it "can dock a bike" do
		expect(van.dock(bike)).to eq van
	end

	it "can release a bike" do
		van.dock(working_bike)
		expect(van.release_bike).to eq working_bike
	end

	it "only releases working bikes" do
		broken_bike = double :bike, working?: false
		van.dock(broken_bike)
		van.dock(working_bike)
		van.dock(working_bike)
		expect(van.release_bike).to be working_bike
	end
end
