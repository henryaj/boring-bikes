require 'person'

describe 'a person' do

	it 'starts off without a bike' do
		person = Person.new
		expect(person.has_bike?).to eq false
	end

  it 'can have a bike' do
    person = Person.new(:bike)
    expect(person.has_bike?).to eq true
  end

	it 'can have a horrible accident' do
		person = Person.new(:bike)
		expect(person.has_accident!).to eq person
	end
end
