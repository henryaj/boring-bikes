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

	def make_it_fly!
		@wings = 2
	end

	def has_wings?
		@wings != nil
	end

	def can_fly?
		has_wings? == true
	end

	def is_docked?
		"SLIIIIIIMED!"
	end
end