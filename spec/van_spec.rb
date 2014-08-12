require 'van'

describe Van do
	let(:van) {Van.new(:capacity => 25)}

	it "it has the capacity it is initialized with" do
		expect(van.capacity).to eq(25)
	end
end