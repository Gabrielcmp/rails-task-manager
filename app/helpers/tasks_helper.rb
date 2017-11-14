module TasksHelper
  def better_data(task)
    if task.deadline
      task.deadline.strftime("%e of %b %H:%M")
    end
  end

  def print_task(task)
    "#{task.name} - #{better_data(task)}"
  end

  def link_to_delete(task)
    link_to "Delete", task_path(task), method: :delete, data: { confirm: "Are you sure you want to delete?" }
  end
end
