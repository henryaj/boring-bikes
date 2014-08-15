class Bike

	def initialize
		@working = true
	end

	def working?
		@working
	end

	def break!
		@working = false
	end

	def fixed!
		@working = true
	end

end