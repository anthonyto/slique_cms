class Report < ActiveRecord::Base
  belongs_to :account
  has_many :instagram_reports

  def month
    created_at.to_datetime.strftime('%B')
  end
end
