# Virus Predictor

# I worked on this challenge [by myself, with: Ravi Joshi ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Allows access of another file in the same directory. State require relative and state the file name. Require needs the full path to the requested file to access it.
#
require_relative 'state_data'

class VirusPredictor

#creates an instance of the virus predictor class.  Takes in 3 perametors state of origin, density and population. Creates instance veriables for each perametor.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#allows access to the predicted deaths method and speed of spread method within the virus effects method.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

#Takes in the same perametors as initialize method. Given the population density, it conditionally multiplies population by a given float and rounds down with the .floor method.

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#Takes population density and state as perametors. Given the population density it adds to the speed of spread.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


 alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |state_name,population_hash|
  usa = VirusPredictor.new(state_name,population_hash[:population_density], population_hash[:population])
  usa.virus_effects
end
#=======================================================================
# Reflection Section