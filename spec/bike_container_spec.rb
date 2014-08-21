shared_examples 'a bike container' do


	let ( :bike_container ) { described_class.new           }
	let ( :broken_bike    ) { double :bike, working?: false, fix!: nil}
	let ( :working_bike   ) { double :bike, working?: true, fix!: nil}

	it "can dock a bike" do
		bike_container.dock_bike(working_bike)
		expect(bike_container.has_bikes?).to be true
	end

  it 'can release a bike' do
    bike_container.dock_bike(working_bike)
    expect(bike_container.release_bike).to be working_bike
  end

	it 'knows if it has got available bikes (like, not broken)' do
		bike_container.dock_bike(broken_bike)
		expect(bike_container.available?).to be false
	end

  it 'knows that avaiable bikes are working ones' do
    bike_container.dock_bike(broken_bike)
    bike_container.dock_bike(working_bike)
    expect(bike_container.available?).to be true
  end

	it 'will only release a working bike' do
    bike_container.dock_bike(working_bike)
    bike_container.dock_bike(broken_bike)
    expect(bike_container.release_bike).to be working_bike
	end

	it 'will dump all its broken bikes when asked' do
    bike_container.dock_bike(broken_bike)
    bike_container.dock_bike(working_bike)
    bike_container.dock_bike(broken_bike)
		expect(bike_container.dump_broken_bikes).to eq [broken_bike, broken_bike]
	end

	it 'will be able to dump working bikes when asked' do 
		bike_container.dock_bike(working_bike)
		bike_container.dock_bike(broken_bike)
		bike_container.dock_bike(working_bike)
		expect(bike_container.dump_working_bikes).to eq [working_bike, working_bike]
	end


end
