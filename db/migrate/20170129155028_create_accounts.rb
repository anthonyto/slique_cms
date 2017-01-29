class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
       t.text :client
       t.text :services
       t.text :instagram
       t.text :facebook
       t.text :yelp
       t.text :slique_email
       t.text :pr_partner
       t.boolean :ubest
       t.boolean :fivestarboss
       t.boolean :facebook_ad
       t.text :facebook_ad_notes
       t.text :correspondence
       t.text :messaging_timeline_q1
       t.text :messaging_timeline_q2
       t.text :messaging_timeline_q3
       t.text :messaging_timeline_q4
       t.text :priorities
       t.text :promotions
       t.text :notes
    end
  end
end
