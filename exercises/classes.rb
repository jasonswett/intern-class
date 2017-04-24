class MenuItem
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class MenuItemDisplay
  def initialize(menu_item, length_of_longest_menu_item_name)
    @menu_item = menu_item
    @length_of_longest_menu_item_name = length_of_longest_menu_item_name
  end

  def name_with_dots
    @menu_item.name.ljust(@length_of_longest_menu_item_name, '.')
  end

  def formatted_price
    '%.2f' % @menu_item.price
  end

  def to_s
    "#{name_with_dots}..$#{formatted_price}"
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
      MenuItemDisplay.new(menu_item, longest_menu_item_name.length).to_s
    end.join("\n")
  end
end

menu = Menu.new
menu.add_item('Hamburger', 5.00)
menu.add_item('Cheeseburger', 5.50)
menu.add_item('Small Fry', 2.00)
menu.add_item('Large Fry', 2.50)

puts menu
