require_relative 'menu_item'
require_relative 'menu_item_display'

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
