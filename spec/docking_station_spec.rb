require 'docking_station'

describe "a docking station" do

	let ( :docking_station ) { DockingStation.new            }
	let ( :broken_bike     ) { double :bike, working?: false }
	let ( :working_bike    ) { double :bike, working?: true  }

	it "can dock a bike" do
		docking_station.dock_bike(working_bike)
		expect(docking_station.has_bikes?).to be true
	end

  it 'can release a bike' do
    docking_station.dock_bike(working_bike)
    expect(docking_station.release_bike).to be working_bike
  end

	it 'knows if it has got available bikes (like, not broken)' do
		docking_station.dock_bike(broken_bike)
		expect(docking_station.available?).to be false
	end

  it 'knows that avaiable bikes are working ones' do
    docking_station.dock_bike(broken_bike)
    docking_station.dock_bike(working_bike)
    expect(docking_station.available?).to be true
  end

	it 'will only release a working bike' do
    docking_station.dock_bike(working_bike)
    docking_station.dock_bike(broken_bike)
    expect(docking_station.release_bike).to be working_bike
	end

	it 'will dump all its broken bikes when asked' do
    docking_station.dock_bike(broken_bike)
    docking_station.dock_bike(working_bike)
    docking_station.dock_bike(broken_bike)
		expect(docking_station.dump_broken_bikes).to eq [broken_bike, broken_bike]
	end

end
