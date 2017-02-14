class CreativeDevelopment < ActiveRecord::Base
  belongs_to :account

  validates :design_name, :requested, presence: true
end
