class CreateCreativeDevelopments < ActiveRecord::Migration
  def change
    create_table :creative_developments do |t|
      t.string :design_name
      t.date :requested
      t.boolean :completed
      t.integer :account_id
    end
  end
end
