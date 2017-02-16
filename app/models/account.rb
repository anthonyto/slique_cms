class Account < ActiveRecord::Base
  has_many :tasks
  has_many :creative_developments

  validates :name, :client, :slique_email, presence: true
end
