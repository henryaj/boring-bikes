class Van
	
	def initialize
		@bikes = []
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
		bike
	end
	
end