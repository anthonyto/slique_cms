class AddReportsToInstagramReports < ActiveRecord::Migration
  def change
    add_reference :instagram_reports, :report, index: true, foreign_key: true
  end
end
