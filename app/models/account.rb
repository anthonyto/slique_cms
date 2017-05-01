class Account < ActiveRecord::Base
  has_many :tasks
  has_many :creative_developments
  has_many :reports

  validates :name, :client_name, :client_email, :client_phone, :slique_email, presence: true
end
