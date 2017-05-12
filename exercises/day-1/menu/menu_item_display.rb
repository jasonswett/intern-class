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
