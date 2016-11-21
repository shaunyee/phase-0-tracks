def survey
  print "how many employees will be processed? "
  employees = gets.chomp.to_i
  i = 1
  while i <= employees do 
    puts "Employee #{i}, what is your name?"
    name = gets.chomp
    puts "how old are you?"
    age = gets.chomp.to_i
    puts "would you like garlic bread?"
    eat_garlic = gets.chomp
    puts "would you like to enroll in the comany's health ensurance?"
    insurance = gets.chomp

    loop do
      puts "do you have allergies?"
      allergies=gets.chomp
      puts "Probably a vampire." if allergies == "sunshine"
      break if allergies == "done" || allergies == "sunshine"
    end
    
  
    puts "Definitely a vampire" if(name == "Drake Cula" || name == "Tu Fang") 
  
    if(age>200 && eat_garlic == 'no' && insurance == 'no' ) 
      puts "Almost certainly a vampire."
    elsif(age<=200 && (eat_garlic == 'yes' || insurance == 'yes')  ) 
      puts "Probably not a vampire."
    end
    i += 1
  end
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end

survey
