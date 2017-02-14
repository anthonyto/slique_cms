class CreativeDevelopmentsController < ApplicationController
  before_action :load_account, only: [:edit, :update, :new, :create, :destroy]
  before_action :load_creative_development, only: [:edit, :update, :destroy]

  def edit
  end

  def update
    if @creative_development.update_attributes(creative_development_params)
      flash[:notice] = "Successfully updated"
      redirect_to @account
    else
      flash[:error] = "Creative development update failed"
      render :edit
    end
  end

  def new
    @creative_development = @account.creative_developments.new
  end

  def create
    cd = @account.creative_developments.new(creative_development_params)
    if cd.save
      flash[:notice] = "Creative development successfully created"
      redirect_to @account
    else
      flash[:error] = "Creative development could not be created"
      render :new
    end
  end

  def destroy
    if @creative_development.destroy
      flash[:notice] = "Creative development deleted"
      redirect_to @account
    else
      flash[:error] = "Creative development could not be deleted, please contact support"
      redirect_to @account
    end
  end

  private

  def creative_development_params
    params.require(:creative_development).permit(:design_name, :requested, :completed)
  end

  def load_account
    @account = Account.find(params[:account_id])
  end

  def load_creative_development
    @creative_development = CreativeDevelopment.find(params[:id])
  end
end
