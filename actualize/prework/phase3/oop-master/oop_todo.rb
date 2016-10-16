require_relative "list"
require_relative "task"

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat",6))
list.add_task(Task.new("Take out trash",5))
list.add_task(Task.new("Mow the lawn",2))

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
puts "Incomplete Tasks [#{list.number_of_incomplete_tasks}]: "
puts list.incomplete_task_names

puts "-"*40
puts "Mark 'Take out Trash Complete'"
list.tasks[1].toggle_complete!
puts "Remaining Tasks [#{list.number_of_incomplete_tasks}]:"
puts list.incomplete_task_names

puts "-"*40
puts "Nevermind..."
list.tasks[1].toggle_complete!
puts "Remaining Tasks [#{list.number_of_incomplete_tasks}]:"
puts list.incomplete_task_names

list.display_tasks_by_priority
