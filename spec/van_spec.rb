require 'van'


describe 'a van' do

	let (:van) { Van.new }
	let (:bike) { double :bike }
	let (:super_velo) {double :bike}
	let (:south_kensington) {double :station}

	def fill_van(van)
		van.capacity.times {van.receive(bike)}
	end

	context 'when it is initialized with no settings' do

		it 'has no bikes' do
			expect(van.has_bikes?).to eq false
		end

		it 'can receive a bike' do
			van.receive(bike)
			expect(van.has_bikes?).to eq true
		end

		it 'is not at a location' do
			expect(van.location).to be nil
		end

		it 'has the default capacity' do
			expect(van.capacity).to eq (10)
		end

		it 'can not receive bikes when at capacity' do
			fill_van(van)
			expect{van.receive(bike)}.to raise_error	
		end
		
	end

	context 'when initialized with a set capacity' do

		let (:van) { Van.new(20)}

		it 'has that set capacity' do
			expect(van.capacity).to eq (20)
		end

	end


	context 'with a bike' do


		let (:van) {bob = Van.new; bob.receive(bike); bob}

		it 'can count how many bikes it has' do
			expect(van.bikes_count).to eq (1)
		end

		it 'can return a bike' do
			expect(van.return(bike)).to eq bike
		end

		it 'knows it has one fewer bike after returning one' do
			van.return(bike)
			expect(van.bikes_count).to eq(0)
		end

		it 'returns the bike that was requested' do
			van.receive(super_velo)
			expect(van.return(super_velo)).to be super_velo
		end

	end

	context 'when driving around' do

		it 'can go to a location' do
			van.drive_to(south_kensington)
			expect(van.location).to be south_kensington
		end

	end

	context ',when at a station' do

		context 'that has no bikes,' do

			let (:station_without_bikes) { double :station, :release => raise }

			it 'should not be able to collect a bike' do
				van.drive_to(station_without_bikes)
				expect{van.receive(location.release)}.to raise_error	
			end
		end

		context 'that has bikes,' do

			let (:station_with_bikes) { double :station, :release => bike }
			let (:broken_bike) { double :bike, :working? => false }
			let (:working_bike) { double :bike, :working? => true }

			xit 'can only pick up a working bike' do

			end

			xit 'cannot pick up a broken bike' do
			end
		end
	end

end