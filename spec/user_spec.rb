require 'user'

describe 'a bike user' do

  let (:user) { User.new('Graham Greene')}
  let (:station)  { double :station }
  let (:bike) { double :bike }


  it 'should be initialized with a name' do
    expect( user.name ).to eq('Graham Greene')
  end

  it 'should be able to go to a station' do
    user.go_to(station)
    expect(user.location).to eq station
  end

  it 'should be able to pick up a bike from a station' do
    user.go_to(station)
    station.dock(bike)
    user.hire_bike
  end






end

