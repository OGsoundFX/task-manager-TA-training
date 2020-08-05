class TasksController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def home
  end
  def index
    @tasks = Task.all
  end

  def find
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    # params[:completed] ? completed = true : completed = false
    # new_task = Task.new(title: params[:title], details: params[:details], completed: completed)
    new_task = Task.new(task_params)
    new_task.save
    redirect_to tasks_path
  end

  def destroy
    Task.delete(params[:id])
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
