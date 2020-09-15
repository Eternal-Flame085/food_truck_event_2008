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
    if @inventory.has_key?(item)
      @inventory[item] += stock
    else
    @inventory[item] = stock
    end
  end

  def potential_revenue
    revenue = 0
    @inventory.each do |key, quantity|
      revenue += (key.price.delete("$").to_f) * quantity.to_f
    end
    revenue
  end
end
