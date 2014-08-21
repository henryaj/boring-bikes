require 'bike_container'

class Garage

	include BikeContainer

def receive_bikes_from(van)
	@bikes << van.dump_broken_bikes
	nil
end

end
