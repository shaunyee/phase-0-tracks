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
  
 