require 'bike'

describe Bike do
	let(:bike) {Bike.new}
	it "should not be broken after we create it" do
		expect(bike).not_to be_broken
	end

	it "should be able to break" do
		bike.break!
		expect(bike).to be_broken
	end

	it "should be able to get fixed" do
		bike.break!
		bike.fix!
		expect(bike).not_to be_broken
	end

	it "should have wings if is a flying bike" do
		bike.make_it_fly!
		expect(bike.has_wings?).to be true
	end

	it "should not have wings if it is not a flying bike" do
		expect(bike.has_wings?).to be false
	end

	it "should not be able to fly if not a flying bike" do
		expect(bike.can_fly?).to eq false
	end

	it "should be able to fly if it's a flying bike" do
		bike.make_it_fly!
		expect(bike.can_fly?).to eq true
	end

	it "should know whether it is docked or not" do
		expect(bike.is_docked?).not_to eq nil
	end

	it "should either be docked or not" do
		expect(bike.is_docked?).to be (true or false)
	end

	it "should report as undocked if not docked" do
		bike.undock!
		expect(bike.is_docked?).to be false
	end

	it "should be able to dock undocked biked" do
		bike.undock!
		bike.dock!
		expect(bike.is_docked?).to be true
	end
end