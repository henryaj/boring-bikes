require 'bike_container'

class Garage

	include BikeContainer

	def initialize(options = {}) # Pass in options for Garage initialisation as an array
		self.capacity = options.fetch(:capacity, capacity)
	end

	def accept(bike)
		self.dock(bike)
		bike.fix!
	end

end