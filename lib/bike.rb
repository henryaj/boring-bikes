class Bike
	def initialize
		fix!
	end

	def broken?
		@broken
	end

	def break!
		@broken = true
	end

	def fix!
		@broken = false
	end

	def fly
		@wings = 2
		puts "Wheeeee!"
	end

	def is_flying?
		@wings == true
	end

	def has_wings?
		true
	end
end