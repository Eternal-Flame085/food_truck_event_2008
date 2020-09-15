require "minitest/autorun"
require "minitest/pride"
require "./lib/item"

class ItemTest < Minitest::Test
	def test_it_exist
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

    assert_instance_of Item, item1
	end

  def test_it_has_readable_variables
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

    assert_equal 'Peach Pie (Slice)', item1.name
    assert_equal "$3.75", item1.price
    assert_equal 'Apple Pie (Slice)', item2.name
    assert_equal '$2.50', item2.price
  end
end
