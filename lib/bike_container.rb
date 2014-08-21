module BikeContainer

	attr_accessor :bikes
	attr_reader :time_bike_was_hired


	def initialize
		@bikes = []
	end

	def has_bikes?
		@bikes.any?
	end

	def dock_bike(bike)
		raise(ArgumentError, "Can only dock bikes") unless bike.class == Bike
		@bikes << bike
	end

	def release_working_bike
		@bikes.delete(working_bikes.pop)
	end

	def release_broken_bike
		@bikes.delete(broken_bikes.pop)
	end

	def available?
		@bikes.any?(&:working?)
	end

	def working_bikes
		@bikes.select(&:working?)
	end

	def broken_bikes
		@bikes.reject(&:working?)
	end

	def dump_broken_bikes
		dumped_bikes = broken_bikes
		@bikes = @bikes - broken_bikes
		dumped_bikes
	end

	def dump_working_bikes
		dumped_bikes = working_bikes
		@bikes = @bikes - working_bikes
		dumped_bikes
	end


end
