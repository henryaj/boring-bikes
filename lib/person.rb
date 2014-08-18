class Person

	def initialize(bike=nil)
		@bike = bike
	end

	def has_bike?
		not @bike.nil?
	end

  def has_accident!
		@bike.break!
    self
  end

	def rent_bike_from docking_station
    @bike = docking_station.release_bike
		self
	end

  def return_bike_to docking_station
    docking_station.dock_bike(@bike)
		@bike = nil
    self
  end
end
