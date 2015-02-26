class WorkshopSubscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :workshop

  validates :user_id, :workshop_id, presence: true
end
