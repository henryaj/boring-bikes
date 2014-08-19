require 'van'

describe Van do
	let(:working_bike) { double :bike, working?: true }
	let(:bike) { double :bike }
	let(:van) { Van.new }

	it_behaves_like "a bike container"

end
