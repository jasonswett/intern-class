#!/usr/bin/env ruby

require_relative 'menu'

menu = Menu.new
menu.add_item('Hamburger', 5.00)
menu.add_item('Cheeseburger', 5.50)
menu.add_item('Small Fry', 2.00)
menu.add_item('Large Fry', 2.50)

puts menu
