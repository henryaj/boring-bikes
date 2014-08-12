require 'bike_container'

class Van

	include BikeContainer

	attr_reader :location

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def go_to(location)
		 @location = location
	end

	def get_bikes
		bike = @location.release
		dock(bike)
	end

end
