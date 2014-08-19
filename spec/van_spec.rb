require 'van'

describe 'a van' do
	it "can dock a bike" do
		van = Van.new
		bike = double :bike
		expect(van.dock(bike)).to eq van
	end
end
