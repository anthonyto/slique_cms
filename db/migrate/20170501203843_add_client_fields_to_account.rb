class AddClientFieldsToAccount < ActiveRecord::Migration
  def change
    rename_column :accounts, :client, :client_name
    add_column :accounts, :client_email, :string
    add_column :accounts, :client_phone, :string
  end
end
