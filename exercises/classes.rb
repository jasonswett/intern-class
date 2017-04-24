class MenuItem
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Menu
  def add_item(name, price)
    @menu_items ||= []
    @menu_items << MenuItem.new(name, price)
  end

  def to_s
    @menu_items.map do |menu_item|
      "#{menu_item.name} #{menu_item.price}"
    end.join("\n")
  end
end

menu = Menu.new
menu.add_item('Hamburger', 5.00)
menu.add_item('Cheeseburger', 5.50)
menu.add_item('Small Fry', 2.00)
menu.add_item('Large Fry', 2.50)

puts menu
