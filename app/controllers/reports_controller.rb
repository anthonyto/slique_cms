class ReportsController < ApplicationController
  before_action :load_account, only: [:new, :create]

  def show
    @report = Report.find(params[:id])
  end

  def new
    @report = @account.reports.new
  end

  def create
    @report = @account.reports.new(report_params)
    if @report.save
      flash[:notice] = "Report successfully created"
      redirect_to @report
    else
      flash[:error] = "Report could not be created"
      render :new
    end
  end

  private

  def load_account
    @account = Account.find(params[:account_id])
  end

  def report_params
    params.require(:report).permit(:focus, :creative_developments_summary, :upcoming, :questions)
  end
end
