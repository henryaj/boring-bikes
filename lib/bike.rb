class Bike

	attr_reader :time_bike_was_hired

  def initialize
    @working = true
  end

  def break!
    @working = false
    self
  end

	def working?
    @working
	end

	def fix!
		@working = true
		self
	end

	def set_time_bike_was_hired
		@time_bike_was_hired = Time.now
	end



end
