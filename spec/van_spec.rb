require 'van'


describe 'a van' do

let (:van) { Van.new }
let (:bike) { double :bike }

	it 'starts with no bikes' do
		expect(van.has_bikes?).to eq false
	end

	it 'can receive a bike' do
		van.receive(bike)
		expect(van.has_bikes?).to eq true
	end

	it 'can count how many bikes it has' do
		van.receive(bike)
		van.receive(bike)
		expect(van.bikes_count).to eq (2)
	end

	it 'can return a bike' do
		van.receive(bike)
		expect(van.return(bike)).to eq bike
	end

end