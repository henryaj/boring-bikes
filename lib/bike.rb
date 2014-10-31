class Bike

	attr_reader :registration_counter

	@@registration_counter = 1000000000
	@@all_bikes = []

	def self.registration_counter
		@@registration_counter
	end

	def self.count
		@@all_bikes.count
	end

	def self.all_bikes
		@@all_bikes
	end

	attr_reader :time_bike_was_hired, :registration

  def initialize
    @working = true
		@@registration_counter += 1
		@registration = "BB-#{@@registration_counter}"
		@@all_bikes << self
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
