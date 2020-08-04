class TasksController < ApplicationController
  def home
  end
  def index
    @tasks = Task.all
  end

  def find
    @task = Task.find(params[:id])
  end

  def new
  end

  def create
    params[:completed] ? completed = true : completed = false
    new_task = Task.new(title: params[:title], details: params[:details], completed: completed)
    new_task.save
    redirect_to tasks_path
  end

  def destroy
    Task.delete(params[:id])
    redirect_to tasks_path
  end
end
