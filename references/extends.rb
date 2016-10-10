#Reference for Extending/Including Classes using Mixins

module Tracking
  def create(name) #Factory Method
    object = new(name)
    instances.push(object) #Stores new Objects to Internal Array
    return object
  end

  def instances
    @instances ||= [] # Create an array if one doesn't exist
  end

  def find(name)
    instances.find do |instance| 
      #Uses Enumerable::find to loop through array and returns when the block doesn't return false
      instance.name.downcase == name.downcase
    end
  end
end

class Customer
  extend Tracking 
  
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def to_s
    "[#{@name}]"
  end
end

#customer = Customer.new("billy")
#puts customer


puts "BEFORE: Customer.instances : %s" % Customer.instances.inspect
puts "Customer instance 1 : name == %s" % Customer.create("Billy").to_s
puts "Customer instance 2 : name == %s" % Customer.create("Bob").to_s
puts "AFTER: Customer.instances : %s" % Customer.instances.inspect
puts "This is the Customer that matches name \"billy\" : %s" % Customer.find("billy")
puts "Let's try putting in many more Customers."
Customer.create("Jean")
Customer.create("Billy")
Customer.create("Jason")
Customer.create("Todd")

puts "AFTER: Customer.instances : %s" % Customer.instances.inspect

puts "How do I create a separate customer structure?"

customer2 = Customer.new("Test")
puts "NEW AFTER: Customer.instances : %s" % Customer.instances.count
