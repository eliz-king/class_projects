
@my_cart = []
@store_item = [
  {item:'apple', price: 0.99 },
  {item: 'orange', price: 0.79 },
  {item: 'pear', price: 0.49 },
  {item: 'avocado', price: 2.00 },
  {item: 'strawberries', price: 0.89},
  {item: 'milk', price: 1.50 }
]


def menu
  puts "make a selection:"
  puts '1) grocery items'
  puts '2) add to cart'
  puts '3) view cart'
  puts '4) remove from cart'
  puts '5) View cart total'
  puts '6) add to store'
  puts '7) exit'
end

def user_selection
  menu
  choice = gets.to_i
  case choice
  when 1
    view_grocery_store
  when 2
    add_to_cart
  when 3
    view_cart
  when 4
    remove_from_cart
  when 5
    view_total
  when 6
    add_to_store
  when 7
    puts "goodbye"
    exit
  else
    puts 'invalid choice, please try again'
  end

   user_selection
end


def view_grocery_store
  @store_item.each_with_index { |item, index| puts "#{index + 1}) #{item[:item]} #{item[:price]}"}
  puts 
end

def add_to_cart
  puts 'what do you want to add?' 
   view_grocery_store
  choice = gets.to_i
    if choice > 0 && choice <= @store_item.count
    item = @store_item[choice - 1][:item]
    price =  @store_item[choice - 1][:price]
    puts "You added: #{item} #{price}"
    puts  
    @my_cart << { item: item , price: price }
    
    end
end

def view_cart
  puts "Items in your cart"
  @my_cart.each_with_index { |item, index| puts "#{index + 1} #{item[:item]} #{item[:price]}" }
  puts
end

def remove_from_cart
  puts "what do you want to remove?"
  view_cart
  choice = gets.to_i
  if choice > 0 && choice <= @my_cart.count
    to_delete = @my_cart
    to_delete.delete_at(choice - 1)
  end
end

def view_total
  puts 'your total is:'
  temp_total = 0
  @my_cart.each { |item| temp_total += item[:price] }
  puts temp_total
  puts
end

def add_to_store
  puts 'enter item:'
  a = gets.chomp
  puts 'enter price:'
  b = gets.chomp
  @store_item << {item: a, price: b}
  puts
end

user_selection