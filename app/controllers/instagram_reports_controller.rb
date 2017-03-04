class InstagramReportsController < ApplicationController
  before_action :load_report
  before_action :load_ir, only: [:edit, :update]

  def edit
  end

  def update
    if @ir.update_attributes(instagram_report_params)
      flash[:notice] = "Successfully updated"
      redirect_to @report
    else
      flash[:error] = "Instagram Report update failed"
      render :edit
    end
  end

  def new
    @ir = @report.instagram_reports.new
  end

  def create
    @ir = @report.instagram_reports.new(instagram_report_params)
    if @ir.save
      flash[:notice] = "IR created"
      redirect_to @report
    else
      flash[:error] = "IR creation failed"
      redirect_to :back
    end
  end

  def destroy
    @ir = InstagramReport.find(params[:id])
    if @ir.destroy
      flash[:notice] = "Task deleted"
      redirect_to @report
    else
      flash[:error] = "Task could not be deleted, please contact support"
      redirect_to @report
    end
  end

  private

  def load_report
    @report = Report.find(params[:report_id])
  end

  def load_ir
    @ir = InstagramReport.find(params[:id])
  end

  def instagram_report_params
    params.require(:instagram_report).permit(:note, :image)
  end
end
