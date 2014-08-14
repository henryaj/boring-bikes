class Van

	attr_reader :location

	def initialize
		@bikes = []
		@location = nil
	end

	def has_bikes?
		return true unless @bikes.length == 0
		false
	end

	def receive(bike)
		@bikes << bike
		self
	end

	def bikes_count
		@bikes.length
	end

	def return(bike)
		@bikes.delete(bike)
	end

	def drive_to(station)
		@location = station
	end

end