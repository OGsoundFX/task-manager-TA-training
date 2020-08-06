class TasksController < ApplicationController
  # this line is only for standard forms (not form_for or simple_form_for)
  # skip_before_action :verify_authenticity_token, only: :create

  before_action :find_task, only: [:show, :edit, :mark_complete]

  def home
  end
  def index
    @tasks = Task.all
  end

  def show
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

  def edit
  end

  def mark_complete
    @task.completed = true
    @task.save
    redirect_to task_path(@task)
  end

  def update
  end

  def destroy
    Task.delete(params[:id])
    redirect_to tasks_path
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
