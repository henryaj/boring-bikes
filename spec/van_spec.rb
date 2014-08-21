require 'van'

describe Van do

	it_behaves_like "a bike container"

	it "should be able to collect working bikes" do
	van = Van.new
	working_bike = double :working_bike, working?: true
	station = double :station, dump_working_bikes: [working_bike]

	expect(van.working_bikes).to eq []
	van.collect_from(station)
	expect(van.working_bikes).to eq [working_bike]
end

end

