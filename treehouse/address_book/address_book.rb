require "./contact"
require "yaml"

class AddressBook
  attr_reader :contacts

  def initialize
    @contacts = []
    open()
  end

  def open
    # Open 'contacts.yml' file and read serialized array back into @contacts
    yml_file="contacts.yml"
    if File.exists?(yml_file)
      @contacts = YAML.load_file(yml_file)
    end
  end

  def save
    # Write Contacts Address Book to YAML File
    File.open("contacts.yml", "w") do |file|
      file.write(contacts.to_yaml)
    end
  end



  def run
    loop do
      puts "-"*40
      puts "Address Book"
      # Menu
      puts "a: Add Contact"
      puts "p: Print Address Book"
      puts "s: Search Address Book"
      puts "e : Exit"

      print "Enter your choice : "
      input = gets.chomp
      case input.downcase
      when 's'
        print "Provide a Search Term: "
        search = gets.chomp
        find_by_name(search)
        find_by_address(search)
        find_by_phone_number(search)
      when 'a'
        # Add Contact
        add_contact
      when "p"
        if contacts.size == 0
          puts "No CONTACTS!"
        else
          print_contact_list
        end
      when "e"
        break
      end
      gets
    end
    save()
  end

  def print_results(search, results)
    puts search
    results.each do |contact|
      puts contact.to_s('full_name')
      contact.print_phone_numbers
      contact.print_addresses
      puts "\n"
    end
  end

  def find_by_name(name)
    results = []
    search = name.downcase
    contacts.each do |contact|
      if contact.full_name.downcase.include?(search)
        results.push(contact)
      end
    end
    print_results("Name search results (#{search})", results)
  end

  def find_by_phone_number(number)
    results = []
    search = number.gsub("-", "")
    contacts.each do |contact|
      contact.phone_numbers.each do |phone_number|
        if phone_number.number.gsub("-", "").include?(search)
          results.push(contact) unless results.include?(contact)
        end
      end
    end
    print_results("Phone search results (#{search})", results)
  end

  def find_by_address(query)
    results = Array.new
    search_tokens = query.downcase.split
    contacts.each do |contact|
      contact.addresses.each do |address|
        search_tokens.each do |token|
          if address.to_s('long').downcase.include?(token)
            results.push(contact) unless results.include?(contact)
          end
        end
      end
    end
    print_results("Address search results (#{query.downcase})", results)
  end

  def print_contact_list
    puts "Contact List"
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end

  def add_contact
    contact = Contact.new
    print "First Name: "
    contact.first_name = gets.chomp
    print "Middle Name: "
    contact.middle_name = gets.chomp
    print "Last Name: "
    contact.last_name = gets.chomp

    loop do
      puts "Add phone number or address? "
      puts "p : Add Phone Number"
      puts "a : Add Address"
      puts "Any other key to go back"
      response = gets.chomp
      case response
      when 'p'
        print "Phone Number kind (Home, Work, etc): "
        kind = gets.chomp
        print "Number: "
        number = gets.chomp
        contact.add_phone_number(kind,number)
      when 'a'
        print "Address Kind : (home, work, etc)"
        kind = gets.chomp
        print "Street 1: "
        street_1 = gets.chomp
        print "Street 2: "
        street_2 = gets.chomp
        print "City: "
        city = gets.chomp
        print "State: "
        state = gets.chomp
        print "Zip Code: "
        postal_code = gets.chomp
        contact.add_address(kind, street_1, street_2, city, state, postal_code)
      else
        break
      end
    end
    contacts.push(contact)
  end
end

address_book = AddressBook.new
address_book.run
