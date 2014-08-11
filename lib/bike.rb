class Bike
	def initialize
		fix!
		@wings = 0
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
		@wings != 0
	end

	def has_wings?
		@wings != 0
	end

	def can_fly?
		has_wings? == true ? "You can flyyyyy!" : "You can't fly!"
	end
end