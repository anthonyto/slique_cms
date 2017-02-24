class Account < ActiveRecord::Base
  has_many :tasks
  has_many :creative_developments
  has_many :reports

  validates :name, :client, :slique_email, presence: true
end
