class AccountsController < ApplicationController
  before_action :load_account, only: [:show, :edit, :update, :destroy]

  def index
    @accounts = Account.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def account_params
    params.require(:account).permit(
      :client,
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
