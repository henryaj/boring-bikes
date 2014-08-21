require 'bike_container'

class Van
	include BikeContainer
	
	def collect_from(location)
		@bikes = @bikes + location.dump_working_bikes
	end



end
