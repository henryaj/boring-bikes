module BikeContainer

  DEFAULT_CAPACITY =10

  def bikes
    @bikes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    raise TypeError, "Only bikes are accepted" if bike.class != Bike
    raise "#{self} is full" if full?
    bikes << bike
  end

  def release
    bikes.pop
  end

  def full?
    bike_count == capacity
  end

  def available_bikes
    bikes.reject {|bike| bike.broken? }
  end

end
