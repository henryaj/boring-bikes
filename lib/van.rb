class Van
	
	def initialize
		@bikes = false
	end

	def has_bikes?
		@bikes
	end

	def receive(bike)
		@bikes = true
	end
end