class CreateMonthlyMessagingTimelines < ActiveRecord::Migration
  def change
    create_table :monthly_messaging_timelines do |t|
      t.references :account
      t.text :january
      t.text :february
      t.text :march
      t.text :april
      t.text :may
      t.text :june
      t.text :july
      t.text :august
      t.text :september
      t.text :october
      t.text :november
      t.text :december

      t.timestamps null: false
    end
  end
end
