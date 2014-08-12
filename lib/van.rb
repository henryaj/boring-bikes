require_relative 'bike_container'

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
		dock(@location.release)
	end

	def drop_bike
		@location.class == DockingStation ? @location.dock(bikes.pop) : raise(StandardError, "Garage can only accept broken bikes")
	end

	private

	def dock(bike)
		super
	end
end
