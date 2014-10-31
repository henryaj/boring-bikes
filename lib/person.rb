class Person

	attr_reader :total_time_bike_hired

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
 		@bike.set_time_bike_was_hired
		self
	end

  def return_bike_to docking_station
		set_total_time_bike_hired
    docking_station.dock_bike(@bike)
		@bike = nil
    self
  end

	def set_total_time_bike_hired
		@total_time_bike_hired = Time.now - @bike.time_bike_was_hired
	end

end
