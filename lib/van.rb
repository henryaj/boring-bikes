class Van
	def initialize
		@bikes = []
	end
	
	def dock(bike)
		@bikes << bike
		self
	end

	def release_bike
		bike = @bikes.select(&:working?).pop
		@bikes.delete(bike)
	end
	
end
