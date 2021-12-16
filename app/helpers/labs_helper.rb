module LabsHelper
  def task_template(template, text, successful, total)
    render partial: template, locals: { task_text: text, successful: successful, num_test: total }
  end
end
