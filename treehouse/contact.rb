# File for Address Book Contact class.

class Contact
  attr_accessor :first_name, :middle_name, :last_name

  def full_name
    full_name = first_name
    if !middle_name.nil?
      full_name += " "
      full_name += middle_name
    end
    full_name += " "
    full_name += last_name
    return full_name
  end

end

# TEST
contact1 = Contact.new
contact1.first_name = "Jonathan"
contact1.last_name = 'Pham'

puts "This is  your contact"
puts contact1.inspect

puts "First Name : #{contact1.first_name}"
puts "Middle Name : #{contact1.middle_name}"
puts "Last Name : #{contact1.last_name}"
puts "Full Name : #{contact1.full_name}"
