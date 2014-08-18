require 'person'

describe 'a person' do

	it 'starts off without a bike' do
		person = Person.new
		expect(person.has_bike?).to be false
	end
end
