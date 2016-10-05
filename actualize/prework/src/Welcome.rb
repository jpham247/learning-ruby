class Animal
  attr_accessor :name, :num_of_legs, :family

  def initialize(options)
    @name = options[:name]
    @num_of_legs = options[:num_of_legs]
    @family = options[:family]
  end

  def has_more_legs?(animal)
    num_of_legs > animal.num_of_legs
  end

  def creepy?
    num_of_legs > 4
  end

  def creepy_message
    creepy? ? "much creepy" : "much not creepy"
  end

  def description
    "This animal's name is #{name}. And the animal is very #{creepy_message}." \
      " It has #{num_of_legs} legs and is part of the #{family} family."
  end
end

xoloitzcuintli = Animal.new({name: "Xoloitzcuintli", num_of_legs: 4, family: "Canidae"})
ptarmigan = Animal.new({name: "Ptarmigan", num_of_legs: 2, family: "Phasianidae"})
tsetse_fly = Animal.new({name: "Tsetse Fly", num_of_legs: 6, family: "Glossinidae"})
platypus = Animal.new({name: "Platypus", num_of_legs: 4, family: "Ornithorhynchidae"})
assassin_bug = Animal.new({name: "Assassin Bug", num_of_legs: 6, family: "Assassin Bug"})
puts "Does the #{tsetse_fly.name} have more legs than #{ptarmigan.name}? : " + tsetse_fly.has_more_legs?(ptarmigan).to_s
puts "Is the #{xoloitzcuintli.name} creepy? : " + xoloitzcuintli.creepy?.to_s
puts platypus.description
puts assassin_bug.description
puts "Does the #{xoloitzcuintli.name} have more legs than #{tsetse_fly.name}? : " + xoloitzcuintli.has_more_legs?(tsetse_fly).to_s
puts tsetse_fly.description
puts xoloitzcuintli.description
puts "Is the #{platypus.name} creepy? : " + platypus.creepy?.to_s
puts ptarmigan.description
