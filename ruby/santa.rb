class Santa
  attr_reader :ethnicity, :age
  
  reindeer_ranking =["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  
  age = 0
  
  def initialize(gender,ethnicity,age)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @age = age
end

def about
  puts "gender: #{@gender}"
  puts "ethnicity: #{@ethnicity}"
end

def speak
  puts "Ho, ho, ho! Haaaappy holidays!"
end

def eats_milk_and_cookies(cookie_type)
  puts "That was a good #{cookie_type}"
end

def celebrate_birthday(year)
  puts #{@year} + 1
end

def get_mad_at(reindeer_ranking, rank)
  reindeer_ranking.insert(8,reindeer_ranking.delete_at(rank))
end

def gender
  @gender = gender
end

def age(age)
  @age = age
  puts "#{@age}"
end

def ethnicity=(ethnicity)
  @ethnicity = ethnicity
  puts "#{ethnicity}"
end
end

#santa.speak
#santa.eats_milk_and_cookies("chocolate chip")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender #fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not #to say", "Mystical Creature (unicorn)", "N/A"]
example_age = rand 1...140
example_genders.length.times do |i|
 santas << Santa.new(example_genders[i], example_ethnicities[i],example_age[i])
  
p santas

end

  
  
  
  