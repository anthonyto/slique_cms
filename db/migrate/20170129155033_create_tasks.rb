class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :requested
      t.boolean :completed
      t.integer :account_id
    end
  end
end
