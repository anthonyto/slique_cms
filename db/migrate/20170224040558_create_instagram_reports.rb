class CreateInstagramReports < ActiveRecord::Migration
  def change
    create_table :instagram_reports do |t|
      t.text :note

      t.timestamps null: false
    end
  end
end
