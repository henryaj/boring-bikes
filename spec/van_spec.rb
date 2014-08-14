require 'van'


describe 'a van' do

	let (:van) { Van.new }
	let (:van_withbike) {bob = Van.new; bob.receive(bike); bob}
	let (:bike) { double :bike }
	let (:super_velo) {double :bike}
	let (:south_kensington) {double :station}

	context 'when it is initialized' do

		it 'has no bikes' do
			expect(van.has_bikes?).to eq false
		end

		it 'can receive a bike' do
			expect(van_withbike.has_bikes?).to eq true
		end

		it 'is not at a location' do
			expect(van.location).to be nil
		end

	end

	context 'with a bike' do

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

		it 'returns the bike that was requested' do
			van_withbike.receive(super_velo)
			expect(van_withbike.return(super_velo)).to be super_velo
		end
	end

	context 'when driving around' do

		it 'can go to a location' do
			van.drive_to(south_kensington)
			expect(van.location).to be south_kensington
		end

	end
end