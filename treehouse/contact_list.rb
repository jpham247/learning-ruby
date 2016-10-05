#/usr/bin/ruby

def ask(question,kind="string")
  print question + " "
  answer = gets.chomp
  answer = answer.to_i if kind == "number"
  return answer
end

def add_contact
  contact = Hash.new
  contact.store(:name,ask("What is the person's Name?"))

  phone_numbers = Array.new
  answer = ""
  while (answer.downcase != "n") do
    answer = ask("Do you want to add a phone number? [y/n] : ")
    if (!answer.index(/[YyNn]+/))
      puts "Invalid Answer"
    end

    if (answer.downcase == "y" )
      phone_number = ask("Enter a phone number: ")
      phone_numbers.push(phone_number)
    end
  end
  contact.store(:phone_numbers,phone_numbers)

  return contact
end

# MAIN PROGRAM
contact_list = Array.new
answer = ""
while (answer.downcase != "n") do
  answer = ask("Do you want to add a contact? [y/n] : ")
  if (!answer.index(/[YyNn]+/))
    puts "Invalid Answer"
  elsif (answer.downcase == "y")
    contact_list.push(add_contact())
  end
end

puts "----"
puts "you have #{contact_list.count} contacts."

contact_list.each do |contact|
  #puts contact.inspect
  puts "Name : #{contact[:name]}"
  if (contact[:phone_numbers].size > 0)
    contact[:phone_numbers].each do |phone_number|
      puts "Phone : #{phone_number}"
    end
  end
end
