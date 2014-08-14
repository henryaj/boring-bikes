require 'bike'

describe 'a bike' do

	let (:bike) { Bike.new }

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
end