class Account < ActiveRecord::Base
  has_one :monthly_messaging_timeline
  has_many :tasks
  has_many :creative_developments
  has_many :reports

  validates :name, :client_name, :client_email, :client_phone, :slique_email, presence: true

  before_save :build_monthly_messaging_timeline
end
