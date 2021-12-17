module LabsHelper
  def task_template(template, task)
    render partial: template, locals: { title: task.title,
                                        text: task.text,
                                        percentage: task.last_result.passed_percentage }
  end
end
