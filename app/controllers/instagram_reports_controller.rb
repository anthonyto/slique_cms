class InstagramReportsController < ApplicationController
  def index
    @ir = InstagramReport.all
  end

  def new
    @ir = InstagramReport.new
  end

  def create
    @ir = InstagramReport.new(instagram_report_params)
    if @ir.save
      flash[:notice] = "IR created"
      redirect_to instagram_reports_path
    else
      flash[:error] = "IR creation failed"
      redirect_to :back
    end
  end

  private

  def instagram_report_params
    params.require(:instagram_report).permit(:note, :image)
  end
end
