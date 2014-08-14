class Bike

	def initialize
		fix!
		@owner = nil
	end

	def working?
		@working
	end

	def break!
		@working = false
	end

	def fix!
		@working = true
	end

	def gets_owner(owner)
		@owner = owner
	end

	def has_owner?
		return false unless @owner
		true
	end

	def owner
		@owner
	end	
end


