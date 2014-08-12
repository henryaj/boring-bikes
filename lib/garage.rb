require 'bike_container'

class Garage

	include BikeContainer

	def accept(bike)
		dock(bike)
		self.fix_bikes
	end

	def fix_bikes
		bikes
		@bikes.each {|bike| bike.fix! }	
	end

end