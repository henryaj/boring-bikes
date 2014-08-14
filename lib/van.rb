class Van

	attr_reader :location

	def initialize(capacity = 10)
		@bikes = []
		@location = nil
		@capacity = capacity
	end

	def has_bikes?
		return true unless @bikes.length == 0
		false
	end

	def receive(bike)
		full? ? raise : @bikes << bike
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

	def capacity
		@capacity
	end

	def full?
		capacity == @bikes.count
	end

end