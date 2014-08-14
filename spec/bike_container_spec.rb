require 'bike'
require 'bike_container'


shared_examples "a bike container" do

	let(:bike) { Bike.new }
	let(:holder) { described_class.new }

	def fill_holder (holder)
		holder.capacity.times {holder.send(:dock, bike)}
	end

	it "should accept a bike" do
		expect(holder.bike_count).to eq(0)
		 holder.send(:dock, bike)
		 expect(holder.bike_count).to eq(1)
	end

	it 'Should release a bike' do
		 holder.send(:dock, bike)
		 holder.release
		expect(holder.bike_count).to eq (0)
	end

	it "should know when it's full" do
		expect(holder).not_to be_full
		fill_holder holder
		expect(holder).to be_full
	end

	it "should not accept a bike if it's full" do
		fill_holder holder
		expect {holder.send(:dock, bike)}.to raise_error(RuntimeError)
	end

	it "should provide the list of available bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.send(:dock, broken_bike)
		holder.send(:dock, working_bike)
		expect(holder.available_bikes). to eq([working_bike])
	end

	it "should only be able to dock a Bike" do
		expect {holder.send(:dock, 256)}.to raise_error(TypeError)
	end
end