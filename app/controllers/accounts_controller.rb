class AccountsController < ApplicationController
  before_action :load_account, only: [:show, :edit, :update, :destroy]

  def index
    @accounts = Account.all
  end

  def show
    # get rid of this assignment and use a loop in the view instead
    @mmt = @account.monthly_messaging_timeline
  end

  def edit
  end

  def update
    if @account.update_attributes(account_params)
      flash[:notice] = "Successfully updated"
      redirect_to @account
    else
      flash[:error] = "Account update failed"
      render :edit
    end
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      flash[:notice] = "Successfully updated"
      redirect_to @account
    else
      flash[:error] = "Account creation failed"
      render :new
    end
  end

  def destroy
  end

  private

  def account_params
    params.require(:account).permit(
      :name,
      :client_name,
      :client_email,
      :client_phone,
      :services,
      :instagram,
      :facebook,
      :yelp,
      :slique_email,
      :pr_partner,
      :ubest,
      :fivestarboss,
      :facebook_ad,
      :facebook_ad_notes,
      :correspondence,
      :messaging_timeline_q1,
      :messaging_timeline_q2,
      :messaging_timeline_q3,
      :messaging_timeline_q4,
      :priorities,
      :promotions,
      :notes)
  end

  def load_account
    @account = Account.find(params[:id])
  end
end
