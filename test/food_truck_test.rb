require "minitest/autorun"
require "minitest/pride"
require "./lib/food_truck"

class FoodTruckTest < Minitest::Test
	def test_it_exist
    food_truck = FoodTruck.new({})

    assert_instance_of FoodTruck, food_truck
	end
end