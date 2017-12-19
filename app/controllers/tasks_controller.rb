class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @new_task = Task.new
    @tasks = current_user.tasks
  end

  def create
    task_params = params.require(:task).permit(:content)
    @task = current_user.tasks.build(task_params)

    if @task.save
      flash[:success] = "Created task successfully!"
    else
      flash[:error] = "Failed to create task!"
    end

    redirect_to tasks_path
  end
end
