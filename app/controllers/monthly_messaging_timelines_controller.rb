class MonthlyMessagingTimelinesController < ApplicationController
  before_action :load_account
  before_action :load_mmt

  def edit
  end

  def update
    if @mmt.update_attributes(mmt_params)
      flash[:notice] = "Successfully updated"
      redirect_to @account
    else
      flash[:error] = "Monthly messaging timeline update failed"
      render :edit
    end
  end

  private

  def mmt_params
    params.require(:monthly_messaging_timeline).permit(:january, :february,
      :march, :april, :may, :june, :july, :august, :september, :october,
      :november, :december)
  end

  # This should be extracted into a concern
  def load_account
    @account = Account.find(params[:account_id])
  end

  def load_mmt
    @mmt = @account.monthly_messaging_timeline
  end
end
