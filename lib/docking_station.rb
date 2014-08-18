class DockingStation

	def initialize
		@bikes = []
	end

	def has_bikes?
		@bikes.any?
	end

	def dock_bike(bike)
		@bikes << bike
	end

	def release_bike
		@bikes.pop
	end

	def available?
		@bikes.any?(&:working?)
	end

end
