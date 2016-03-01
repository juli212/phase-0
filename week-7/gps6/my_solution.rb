# Virus Predictor

# I worked on this challenge with Hanna.
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
#require_relative links an external file to the current files so it can pull data from the other file, and use it in the current one.
# it's different from "require" because require() needs ./ to link the file whereas require_relative() does not, as long as it's in the same directory.
require_relative 'state_data'

class VirusPredictor
# initializing the class with 3 arguments. Each argument is assigned to an instance variable.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # defining a new method which calls two other class methods to calculate the predicted deaths and speed of spread of the disease.
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  # def virus_effects
  #   predicted_deaths #(population_density, population, state)
  #   speed_of_spread #(population_density, state)
  # end

  private
# Calculating predicted deaths based on population density. Each increment of population density has a different calculation based on population. Returns number of predicted deaths.
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    number_of_deaths =  if @population_density >= 200
                          (@population * 0.4).floor
                        elsif @population_density >= 150
                          (@population * 0.3).floor
                        elsif @population_density >= 100
                          (@population * 0.2).floor
                        elsif @population_density >= 50
                          (@population * 0.1).floor
                        else
                          (@population * 0.05).floor
                        end

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # calculates speed of spread based on population density. Higher density means it will spread faster. Returns the number of months it will spread across the state.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    speed +=  if @population_density >= 200
                0.5
              elsif @population_density >= 150
                1
              elsif @population_density >= 100
                1.5
              elsif @population_density >= 50
                2
              else
                2.5
              end

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#pseudocode:
#input: each states data
#ouput: a string // Iterating state data through VirusPredictor
# define method called Report with STATE_DATA as argument
  # For each:
    # key in STATE_DATA equal to state
    # call VirusPredictor for each state and take state, population density, population as the three arguments.
    #return the virus_effects


# def report(state_data)
#   state_data.each {
#     |state, value|
#     state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
#     state.virus_effects
#     }
# end

def report(state_data)
  state_data.each do |state_name, population_data|
    state = VirusPredictor.new(state_name, population_data[:population_density], population_data[:population])
    state.virus_effects
  end
end

report(STATE_DATA)

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
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
  The first one is rocket notation which allows strings and integers to be keys while the second(inner) uses symbols as keys.

What does require_relative do? How is it different from require?
  require_relative links an external file. The difference is that with require, a ./ is needed before the filename if the file is in the same directory as the ruby file calling it while require_relative does not need a ./ if the two files are in the same directory. Also called siblings...

What are some ways to iterate through a hash?
  #each will iterate through a hash but you need to have 2 values in the code block to represent the key and the value.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  It is really nice having instance variables because we do not need to keep writing them since the methods already have access to them inside the class.

What concept did you most solidify in this challenge?
  Iterating through nested hashes. I think it makes more sense to me now!
=end