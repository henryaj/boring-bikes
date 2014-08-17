require 'bike_container'

class Van

	include BikeContainer

	def go_to(station)
		@station = station
	end

	def location
		@station
	end

end