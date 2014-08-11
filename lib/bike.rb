class Bike
	def initialize
		fix!
		@docked = true
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
		@docked == true
	end

	def undock!
		@docked = false
	end
end