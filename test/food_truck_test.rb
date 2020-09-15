require "minitest/autorun"
require "minitest/pride"
require "./lib/food_truck"
require "./lib/item"

class FoodTruckTest < Minitest::Test
	def test_it_exist
    food_truck = FoodTruck.new("name")

    assert_instance_of FoodTruck, food_truck
	end

  def test_it_has_readable_variables
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    assert_equal "Rocky Mountain Pies", food_truck.name
  end
end
