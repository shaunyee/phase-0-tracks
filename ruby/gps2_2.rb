# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # use .split to create an array
  # iterate though a hash to set default quantity for list
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps:change item name to a symbol, 
	#store value with a key
# output: updated list

# Method to remove an item from the list
# input: item name
# steps: delete the key with the name
# output: updated list

# Method to update the quantity of an item
# input: both item name and new quantity
# steps: find key in hash and change associated value
# output: updated list

# Method to print a list and make it look pretty
# input: hash
# steps: format for print
# output: N/A just displaying list

def grocery_list_creation (str)
	grocery_list = {}
	items = str.split(" ")
	items.each { |item| grocery_list[item]= 1 }
p grocery_list
return grocery_list
end

def add_item_to_list (grocery_hash, str, quantity = 1)
	grocery_hash[str] = quantity
return grocery_hash
end

def remove_item_from_list (grocery_hash, str)
	grocery_hash.delete(str)
	return grocery_hash
end

def update_item (grocery_hash, str, quantity)
	grocery_hash[str] = quantity
	return grocery_hash
end

def print_list(grocery_hash)
	grocery_hash.each{ |item, quantity| puts "you need to buy #{quantity} #{item}" }
end

example_list = grocery_list_creation("carrots apples cereal pizza")
p add_item_to_list(example_list, "tomatos",3)
p remove_item_from_list(example_list, "apples")
p update_item(example_list,"carrots",4)
print_list(example_list)

