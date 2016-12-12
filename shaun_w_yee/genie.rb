class Genie 
  attr_accessor :name
  attr_reader :age
  attr_reader :submitted_wishes
  
  private :submitted_wishes
  
  def initialize(name, age)
    @name = name
    @age = age
    @inLamp = true
    @submitted_wishes = Hash.new
  end
  
  def exit_lamp
    @inLamp = false
  end
  
  def enter_lamp
    @inLamp = true
  end
  
  def grant_wish(wish)
    exit_lamp()
    granted = nil
    
    if @submitted_wishes.length < 3
      granted = true
      p "Your wish of #{wish} has been granted!"
    else
      granted = false
      p "Sorry, I've already granted three wishes today!"
    end
    
    @submitted_wishes[wish] = granted

    
    enter_lamp()
    granted
  end
  
  def display_wish_history
    
    @submitted_wishes.each do |key, value|
      granted = 'Not Granted'
      if value 
        granted = 'Granted'
      end
      p "#{key} => #{granted}"
    end
  end
  def favorite_wish
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    wishes_count = Hash.new{0}
    
    @submitted_wishes.each do |wish, value|
      
      wish.split("").each do |letter|
        if vowels.index(letter)
          wishes_count[wish] += 1
        end
      end
      
    end
    wishes_count.key(wishes_count.values.max)
    wishes_count
  end
end

g = Genie.new('shaun', 28)


wishes_to_test = ['I want to be happy', 'I want a mansion', 'I want a best friend', 'I want a girlfriend', 'I want to be rich']

wishes_to_test.each do |wish| 
  g.grant_wish(wish)
end

g.favorite_wish()
g.display_wish_history()
  