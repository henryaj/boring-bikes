class DockingStation
  attr_reader :bike_count

  def initialize
    @bikes = []
  end

  def dock(bike)
    @bikes << bike
  end

  def release(bike)
  	@bikes.pop
  end

  def bike_count
  	@bikes.count
  end
end

