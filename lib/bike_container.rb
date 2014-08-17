module BikeContainer


	def initialize
		@bikes = []
	end

	def has_bikes?
		return false if @bikes.empty?
		true
	end

	def dock(bike)
		raise if is_bike?(bike) == false
		@bikes << bike
	end

	def is_bike?(thing)
		thing.class == Bike
	end

	def how_many_bikes
		@bikes.count
	end

	def release(bike)
		@bikes.delete(bike)
	end

end