require 'person'

describe 'a person' do

  let(:person)           { Person.new                 }
  let(:person_with_bike) { Person.new(bike)          }
  let(:bike)             { double :bike, break!: bike }

	it 'starts off without a bike' do
		expect(person.has_bike?).to eq false
	end

  it 'can have a bike' do
    person_with_bike
    expect(person.has_bike?).to eq true
  end

	it 'can have a horrible accident' do
    person_with_bike
		expect(person.has_accident!).to eq person
	end

  it 'can break a bike when it has an accident' do
    person_with_bike
    expect(:bike).to receive(:break!)
  end
end
