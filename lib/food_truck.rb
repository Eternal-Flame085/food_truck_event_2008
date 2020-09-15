class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory.has_key?(item)
      @inventory[item]
    else
      0
    end
  end

  def stock(item, stock)
    @inventory[item] = stock
  end
end
