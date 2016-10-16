class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end

  def number_of_incomplete_tasks
    num_incomplete_tasks = 0
    @tasks.each do |task|
      unless task.complete # == if !task.complete
        num_incomplete_tasks += 1
      end
    end
    return num_incomplete_tasks
  end

  def delete_complete_tasks
    @tasks.delete_if {|task| task.complete}
  end

  def sort_by_priority
    @tasks.sort { |x,y| y <=> x}
  end

  def display_tasks_by_priority
    x = 1
    puts "_"*40
    puts "Current Tasks:"
    sort_by_priority.each do |task|
      completeness = "Incomplete"
      completeness = "Complete" if task.complete
      puts "Task #{x} : #{task.name} | #{completeness} | Priority : #{task.priority}"
      x += 1
    end
    puts "_"*40
  end

end