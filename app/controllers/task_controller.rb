class TaskController < SidebarPagesController
  def new
    @task = Task.new
  end

  def create
    lab = Lab.last
    @task = lab.tasks.create(task_params)
    return redirect_to tasks_new_url unless @task.valid?
    redirect_to lab_url(lab)
  end

  private

  def task_params
    params.require(:task).permit(:title, :text)
  end
end
