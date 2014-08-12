# load BikeContainer module so we can use it
require_relative 'bike_container'

class DockingStation

	include BikeContainer # includes the BikeContainer module

  def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
  end


end

