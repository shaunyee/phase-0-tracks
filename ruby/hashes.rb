# #interior Design Customer info
# pseudocode
# will design an array and hash that will store data for the form
# 	-ask what the user's name is
# 		-store the name into the array
# 	-ask the user their age
# 		-store information into array
# 	-ask the user how many children they have
# 		-store answer in array	
# 	-ask the user what theme they would like
# 		-store answer in array
# 	-ask user where they live
# 		-store answer in array
# 	-ask the user for their email
# 		-store answer in array
# move the information into a hash
# 	-print out the hash
# 	-ask the user if there is anything they would like to change
# 		-run a method and loop that asks them for what they would like to change
# 			-turn the answers of the hash into a string
# 			-return the changes in the hash
# 		-print the new updated hash



customer_info =[]

puts "Welcome to your dream interior design form"

puts "what is your name?"
name = gets.chomp
customer_info << name

puts "How old are you?"
age = gets.chomp.to_i
customer_info << age

puts "how many children do you have?"
children = gets.chomp.to_i
customer_info << children

puts "How would you like your interior themed?"
theme = gets.chomp
customer_info << theme

puts "Where do you live?"
location = gets.chomp
customer_info << location

puts "What is your email?"
email = gets.chomp
customer_info << email
p customer_info

design_form = {

:name => name,
:age => age,
:children => children,
:theme => theme,
:location => location,
:email => email
}

p design_form

puts "Is there anything you would like to edit?"
loop do

mistake = gets.chomp
  while mistake != "none"
  puts "what would you like to change?"
  a = gets.chomp
  edit = a.to_sym
  puts "what would you like to change it to?"
  value = gets.chomp

design_form[edit] = value

p design_form
end

end