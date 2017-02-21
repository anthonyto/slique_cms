class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :focus
      t.text :creative_developments_summary
      t.text :upcoming
      t.text :questions
      t.references :account, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
