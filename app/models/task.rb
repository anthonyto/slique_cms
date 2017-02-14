class Task < ActiveRecord::Base
  belongs_to :account

  validates :name, :requested, presence: true
end
