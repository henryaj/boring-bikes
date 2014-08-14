require 'bike'

describe 'a bike' do

	let (:bike) { Bike.new }
	let (:owner) {double :owner}

	it 'starts off not broken' do
		expect(bike.working?).to be true
	end

	it 'can be broken' do
		bike.break!
		expect(bike.working?).to be false
	end

	it 'can be fixed' do
		bike.break!
		bike.fix!
		expect(bike.working?).to be true
	end

	it 'starts with no owner' do
		expect(bike.has_owner?).to eq false
	end

	it 'can have a owner' do
		bike.gets_owner(owner)
		expect(bike.has_owner?).to be true
	end

	it 'has the same owner that it gets when it gets a new owner' do
		bike.gets_owner(owner)
		expect(bike.owner).to be owner
	end



end