shared_examples 'a bike container' do

	let (:bike_container) { described_class.new }
	let ( :broken_bike )  {
													double :broken_bike,
													working?: false,
													class: Bike
												}
	let ( :working_bike ) {
													double :working_bike,
													working?: true,
													class: Bike
												}

	def add_broken_and_working_bike
		bike_container.dock_bike(broken_bike)
		bike_container.dock_bike(working_bike)
	end

	def add_broken_then_working_then_broken_bike
		bike_container.dock_bike(broken_bike)
		bike_container.dock_bike(working_bike)
		bike_container.dock_bike(broken_bike)
	end

	it "can dock a bike" do
		bike_container.dock_bike(working_bike)
		expect(bike_container.has_bikes?).to be true
	end

	it 'knows if it has got available bikes (like, not broken)' do
		bike_container.dock_bike(broken_bike)
		expect(bike_container.available?).to be false
	end

  it 'knows that avaiable bikes are working ones' do
		add_broken_and_working_bike
		expect(bike_container.available?).to be true
	end

	it 'will release a broken bike' do
		add_broken_and_working_bike
    expect(bike_container.release_broken_bike).to be broken_bike
	end

	it 'will release a working bike' do
		add_broken_and_working_bike
    expect(bike_container.release_working_bike).to be working_bike
	end

	it 'will dump all its broken bikes when asked' do
		add_broken_then_working_then_broken_bike
		expect(bike_container.dump_broken_bikes).to eq [broken_bike, broken_bike]
	end

	it 'will be able to dump working bikes when asked' do
		add_broken_then_working_then_broken_bike
		expect(bike_container.dump_working_bikes).to eq [working_bike]
	end

	it 'will only have broken bikes when working bikes are dumped' do
		add_broken_then_working_then_broken_bike
		bike_container.dump_working_bikes
		expect(bike_container.available?).to be false
	end

	it 'will only have working bikes when broken bikes are dumped' do
		add_broken_then_working_then_broken_bike
		bike_container.dump_broken_bikes
		expect(bike_container.available?).to be true
	end

	it 'raises an error when a something that is not a bike is added' do
		expect{bike_container.dock_bike(42)}.to raise_error(ArgumentError, "Can only dock bikes")
	end
end
