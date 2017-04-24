class MenuItem
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def formatted_price
    '%.2f' % price
  end
end

class Menu
  def add_item(name, price)
    @menu_items ||= []
    @menu_items << MenuItem.new(name, price)
  end

  def menu_item_names
    @menu_items.collect(&:name).sort_by(&:length)
  end

  def longest_menu_item_name
    menu_item_names.last
  end

  def to_s
    @menu_items.collect do |menu_item|
      name = menu_item.name.ljust(longest_menu_item_name.length, '.')
      "#{name}..$#{menu_item.formatted_price}"
    end.join("\n")
  end
end

menu = Menu.new
menu.add_item('Hamburger', 5.00)
menu.add_item('Cheeseburger', 5.50)
menu.add_item('Small Fry', 2.00)
menu.add_item('Large Fry', 2.50)

puts menu
