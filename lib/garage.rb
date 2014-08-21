require 'bike_container'

class Garage

	include BikeContainer

def receive_bikes_from(van)
	@bikes = @bikes + van.dump_broken_bikes
	fix!
	nil
end

def fix!
	@bikes.each {|bike| bike.fix!}
end

end
