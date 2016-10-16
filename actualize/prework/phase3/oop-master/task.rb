class Task

  include Comparable

  # attr_reader :name, :complete, :priority

  def <=>(other_task)
    priority <=> other_task.priority
  end 
  
  def initialize(name,priority=5)
    @name = name
    @priority = priority
    @complete = false
  end

  def name
    return @name
  end

  def complete
    return @complete
  end

  def complete!
    @complete = true
  end

  def toggle_complete!
    @complete = (@complete == false) ? true : false
  end

  def priority 
    @priority
  end

  def assign_priority(number)
    if number.between?(1,10)
      @priority = number
    else
      puts "Priority must be between 1-10, where 10 is of the highst level priority"
      print "Try Again : "
      retry_number = gets.chomp
      assign_priority(retry_number)
    end
  end

end