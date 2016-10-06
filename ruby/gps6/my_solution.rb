require_relative 'state_data'
 

class VirusPredictor
  
  
# Taking information from STATE_DATA. Assign each category to an instance variable. i.e. State
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Calling the predicted_deaths and speed_of_spread methods.  Passing parameters through instance variables defined in initialize method.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# Predicts number of deaths based on populations density using conditional if/else statement, rounds float down, prints a string explaining loss of life.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      death_loss = 0.4
    elsif @population_density >= 150
      death_loss = 0.3
    elsif @population_density >= 100
      death_loss = 0.2
    elsif @population_density >= 50
      death_loss = 0.1
    else
      death_loss = 0.05
    end

    number_of_deaths = (@population * death_loss).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# Describes how quickly the virus will spread based on population density. And prints string expressing speed of spread in months.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

     # if @population_density % 50 == 0 
    #   speed += 0.5
    # else
    #   speed += 2.5
    # end

  end
  
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

def access_state_data
  STATE_DATA.each do |state, population_hash|
    VirusPredictor.new(state, population_hash[:population_density], population_hash[:population]).virus_effects
   end
end

access_state_data


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# Question 1: One hash syntax assigns values to a key by used of the hash
#             rocket ("Alabama" => "population").  The other assigns values using the symbol format 
#             (population: 320,000)

# Question 2: The "require_relative" allows a file access to another files contents.  Specifically
#             "require_relative" assumes the connected files share a directory. A simple "require"
#             needs a complete path to the file.

# Question 3: You can iterate through a hash with .each by passing it block parameters for both
#             key and value.  You can also call .keys on a hash to create an array of hash keys
#             and then use that array to iterate through hash values by accessing them with their precise keys.

# Question 4: What stood out was that the methods expected arguments which had global scopes (i.e. instance variables).
#             In class definitions, it's unnecessary to pass instance variables to a method.  Instance variables are 
#             are available everywhere in the class definition.

# Question 5: Most solidified for me is the concept of DRY.  This was great practice for being thoughtful about what
#             code does and not repeating oneself if possible.  Also pairing down unnecessary/redundant inclusions, like
#             not giving an instance method parameters if the arguments are exclusively instance variables.  There's
#             no need.








