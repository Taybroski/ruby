# I WANT TO EVOLVE THIS LIST SO IT CAN BE MULTIPLE SHOPPING LISTS IN ONE.
# 
# 			FOR EXAMPLE:
# 											- CAR PARTS
# 					 						- GENERAL GROCERIES
# 					 						- HOLIDAY ESSENTIALS
# 					 						- HEALTH ESSENTIALS
# 
# POSSIBLE FEATURES:
# 											- User controls what sections they
# 												would like to add to their list.
# 											- Ask if they would like their price
# 												inputs rounded, or left as floats.



# Asks user to name their list.
def create_list
  print "What is the name of your list: "
  name = gets.chomp
  
  hash = {"name" => name, "items" => Array.new}
  return hash
end
# 
# 
# Dashed line seperator function
def print_seperator(character="-")
	puts character * 60
end
# 
# 
# add user input item quantity
def add_item_qty
	print "How many: "
  quantity = gets.chomp.to_i
	if quantity != "y"  && quantity != "n" && quantity != ""
		print "How many: "
		quantity = gets.chomp.to_i
end
# 
# 
#Asks user to input their items and the quantity of the items.
def add_list_item 
  print "What is the item called: "
  item_name = gets.chomp

  add_item_qty()
  
  hash = {"name" => item_name, "quantity" => quantity}
  return hash
end
# 
# 
#List printing function.
def print_list(list)
	puts "\t\t\t#{list['name']}"
	print print_seperator()
	list["items"].each do |item|
		puts "\tItem: " + item['name'] + "\t\t\t" + 
		"Quantity: " + item['quantity'].to_s
	end
end


answer = "y"
list = create_list()
# puts list.inspect

while answer == "y" || answer == ""
	#pushes shopping list items into the hash.
	list['items'].push(add_list_item())
	puts "Would you like to add another item? (y/n): "
	answer = gets.chomp
	if answer == "n"
		break
		elsif answer != "y" && answer != "n" && answer != ""
		puts "Please enter 'y' or 'n' to add another item to your shopping list"
		add_list_item()
	end
end


# list['items'].push(add_list_item())
# list['items'].push(add_list_item())
# list['items'].push(add_list_item())

#Displays the hash.
print_list(list)
puts print_seperator()