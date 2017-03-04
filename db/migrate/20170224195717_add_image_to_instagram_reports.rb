class AddImageToInstagramReports < ActiveRecord::Migration
  def up
    add_attachment :instagram_reports, :image
  end

  def down
    remove_attachment :instagram_reports, :image
  end
end
