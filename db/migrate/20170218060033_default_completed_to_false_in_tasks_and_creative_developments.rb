class DefaultCompletedToFalseInTasksAndCreativeDevelopments < ActiveRecord::Migration
  def self.up
    change_column :tasks, :completed, :boolean, default: false
    change_column :creative_developments, :completed, :boolean, default: false
  end

  def self.down
    change_column :tasks, :completed, :boolean, nil
    change_column :creative_developments, :completed, :boolean, nil
  end
end
