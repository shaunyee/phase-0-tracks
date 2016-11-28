# #ask for first and last name
# 	takes last name and puts it first
# 	takes first name and puts it last
# 	takes all vowels and changes it to the next vowel
# 	takes all consonants and changes it to the next consonant
# 	ask user if they want to add another name
# 	if user quits, places names in stored array and prints array
	

def fake_name
stored_names = []
prompt = 0
prompt = gets.chomp
while prompt != "quit" do
puts "what is your first name?"
first = gets.chomp
puts "what is your last name?"
last = gets.chomp
full = [last, first].join (' ')

  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  str = full.split('')
  str_new = str.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    elsif
      consonants.include?(char)
      consonants.rotate(1)[consonants.index(char)]
    end
  end
 puts str_new.join
puts "would you like to continue? (type quit to exit)"
prompt = gets.chomp
stored_names << str_new
end
puts stored_names
end
fake_name