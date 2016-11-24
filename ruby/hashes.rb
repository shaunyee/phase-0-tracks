#interior Design Customer info

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