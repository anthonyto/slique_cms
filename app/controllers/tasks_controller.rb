class TasksController < ApplicationController
  before_action :load_account, only: [:edit, :update, :new, :create]
  before_action :load_task, only: [:edit, :update, :destroy]

  def edit
  end

  def update
    if @task.update_attributes(task_params)
      flash[:notice] = "Successfully updated"
      redirect_to @account
    else
      flash[:error] = "Task update failed"
      render :edit
    end
  end

  def new
    @task = @account.tasks.new
  end

  def create
    task = @account.tasks.new(task_params)
    if task.save
      flash[:notice] = "Task successfully created"
      redirect_to @account
    else
      flash[:error] = "Task could not be created"
      render :new
    end
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:name, :requested, :completed)
  end

  def load_account
    @account = Account.find(params[:account_id])
  end

  def load_task
    @task = Task.find(params[:id])
  end
end
