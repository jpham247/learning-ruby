puts "\nProgram 4 : Greeting"
def getName()
  puts "Input your  name: "
  name = gets
  return name.chomp
end


def requestAge()
  puts "How old are you (in Years)?"
  age = gets
  return age.chomp.to_i
end

name = getName
age = requestAge

puts "Welcome #{name}! In 10 years, you will be #{age+10}"
