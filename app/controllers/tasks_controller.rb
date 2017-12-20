class TasksController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: [:finish]

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

  def finish
    task = current_user.tasks.find(params[:task_id])
    task.finish
    render json: { status: 'success', task_id: task.id }
  end
end
