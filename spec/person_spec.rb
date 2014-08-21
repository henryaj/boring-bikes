require 'person'

describe 'a person' do

  let(:bike)             { double :bike, break!: :bike                                 }
  let(:person)           { Person.new                                                  }
  let(:person_with_bike) { Person.new(bike)                                            }
  let(:docking_station)  { double :docking_station, release_bike: bike, dock_bike: nil }

	it 'starts off without a bike' do
		expect(person.has_bike?).to eq false
	end

  it 'can have a bike' do
    expect(person_with_bike.has_bike?).to be true
  end

	it 'can have a horrible accident' do
    expect(person_with_bike.has_accident!).to eq person_with_bike
	end

  it 'can break a bike when it has an accident' do
    expect(bike).to receive(:break!)
    person_with_bike.has_accident!
  end

  it 'can rent a bike from a docking station' do
    expect(person.rent_bike_from(docking_station)).to eq person
  end

	it 'can return a bike to a docking station' do
		expect(person_with_bike.return_bike_to(docking_station)).to eq person_with_bike
	end

	it 'has a bike when it rents a bike' do
	  person.rent_bike_from(docking_station)
		expect(person.has_bike?).to eq true
	end

  it 'has not got a bike when it returns a bike' do
    person_with_bike.return_bike_to(docking_station)
    expect(person_with_bike.has_bike?).to eq false
  end

	it 'gives the bike back to the docking station to deal with when returning it' do
		expect(docking_station).to receive(:dock_bike).with(bike)
		person_with_bike.return_bike_to(docking_station)
	end

	it 'sets the time the bike was hired when hiring a bike' do
		expect(bike).to receive(:set_time_bike_was_hired)
		person.rent_bike_from(docking_station)
	end

end
