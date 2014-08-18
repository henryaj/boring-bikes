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

end
