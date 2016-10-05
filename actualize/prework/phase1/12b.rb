#Write a Program that asks a user for the year they were born and outputs the generation they belong to.
#Note that some of the generations overlap because there is no standard definition for the start and end
#of a generation. So if a user enters 1963, the proggram should say they are both a Baby Boomer & Generation X


def determineCulturalGeneration(birth_year)
  if (birth_year > 1923 && birth_year < 1945 )
    return "the Silent"
  elsif (birth_year > 1944 && birth_year < 1961)
    return "the Baby Boomer"
  elsif (birth_year >= 1961 && birth_year <= 1964)
    return "both the Baby Boomer and Generation X"
  elsif (birth_year > 1964 && birth_year < 1975)
    return "the Generation X"
  elsif (birth_year >= 1975 && birth_year <= 1981)
    return "either the Gen X or the Gen Y"
  elsif (birth_year > 1975 && birth_year <= 1994)
    return "the Gen Y"
  elsif (birth_year == 1995)
    return "either the Gen Y or the Gen Z"
  elsif (birth_year > 1995)
    return "the Gen Z"
  else
    puts "Something is wrong, I haven't accounted for that year."
  end

end

def letsPlayGuessYourGeneration
  puts "Americans put such importance in their generational difference, which one are you?"
  puts "Tell me the year you were born in, and I'll tell you which generation you fall into. Input your birth year : "
  birth_year = gets.chomp().to_i
  if (birth_year > 1922 && birth_year < 2016 )
    generation = determineCulturalGeneration(birth_year)
    puts "Oh wow, thats cool. You are a part of #{generation} Generation."
  else
    puts "Hmm I don't have generation data for that year."
  end
end

letsPlayGuessYourGeneration
