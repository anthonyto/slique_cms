class Account < ActiveRecord::Base
  has_many :tasks
  has_many :creative_developments
end
