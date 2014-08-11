describe Bike do 
	let(:the_bike) {Bike.new}
	it "should not be broken after we create it" do
		expect(the_bike).not to be_broken
	end	
end