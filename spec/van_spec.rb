require 'van'


describe 'a van' do

let (:van) { Van.new }
let (:van_withbike) {bob = Van.new; bob.receive(bike); bob}
let (:bike) { double :bike }

	it 'starts with no bikes' do
		expect(van.has_bikes?).to eq false
	end

	it 'can receive a bike' do
		expect(van_withbike.has_bikes?).to eq true
	end

	it 'can count how many bikes it has' do
		expect(van_withbike.bikes_count).to eq (1)
	end

	it 'can return a bike' do
		expect(van_withbike.return(bike)).to eq bike
	end

	it 'knows it has one fewer bike after returning one' do
		van_withbike.return(bike)
		expect(van_withbike.bikes_count).to eq(0)
	end

end