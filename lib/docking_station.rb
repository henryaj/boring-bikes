class DockingStation
  attr_reader :bike_count

  def initialize
    @bike_count = 0
  end

  def dock(bike)
    @bike_count += 1
  end

  def release(bike)
  	@bike_count -= 1
  end
end

