require_relative 'bike_container'
require_relative 'travelling'

class Van

	include BikeContainer
	include Travelling

	attr_reader :location

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
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
