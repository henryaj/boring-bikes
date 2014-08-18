require 'person'

describe 'a person' do

  let(:bike)             { double :bike, break!: :bike }
  let(:person)           { Person.new                 }
  let(:person_with_bike) { Person.new(bike)          }

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
    docking_station = double :docking_station
    expect(person.rent_bike(docking_station)).to eq person_with_bike
  end

	it 'can return a bike to a docking station' do
		docking_station = double :docking_station
		expect(person_with_bike.return_bike(docking_station)).to eq person_with_bike
	end

 
end
