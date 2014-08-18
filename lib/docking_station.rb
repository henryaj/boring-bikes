class DockingStation

	def initialize
		@bikes = []
	end

	def has_bikes?
		not @bikes.empty?
	end

	def dock_bike(bike)
		@bikes << bike
	end

	def release_bike
		@bikes.pop
	end

  def available?
   false
  end
end
