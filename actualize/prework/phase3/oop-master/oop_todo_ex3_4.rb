require_relative "list"
require_relative "task"

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat"))
list.add_task(Task.new("Take out trash"))
list.add_task(Task.new("Mow the lawn"))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"









# Mark the first task from the list as complete
list.tasks[0].complete!

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names


__END__
Exercise 3)
Line 5 : 	Creates a new instance of the List class. 
Line 8 : 	Calls/utilizes a method in the list class to add a new instance 
			of a Task class (passes in this object) constructed with a string to 
			store in an internal Array variable called 'tasks'
Line 14: 	Accesses an instance variable variable in the 'list' instance called 
			'tasks,' to	retrieve an object at it's index 1, and call the 'name' accessor
			method on that object to retrieve a string.
Line 31: 	Retrieves the list object's task object stored at index 0 of @tasks instance array
			and execute's its 'complete!' method which sets its internal boolean variable for
			indicating completeness to 'true'. 

Exercise 4)
Answer the following questions:
a. In your opinion, what advantages does oop_todo have over procedural_todo?

I feel that the oop_todo is easier to read, it reads more simply like human speech rather than machine speak.
It allows us to not have to repeat lines of code to do the same actions repeatedly. Also, it would be most likely be easier to 
add more tasks and go through more complex scenarios in less lines of code.

b. In your opinion, what advantages does procedural_todo have over oop_todo?

Less files and a direct step by step, top to bottom reading pattern means we don't need to switch to other files to see whats going on. 
Easier to put together and less to think about if all you want to do is form a specific output.