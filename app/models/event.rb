class Event < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :location
  belongs_to :day

  validates :name, :speaker_id, presence: true

  has_many :event_subscriptions
  has_many :users, through: :event_subscriptions

  # Friendly Id
  extend FriendlyId
  friendly_id :name, use: :slugged

  def number_of_users
    self.users.count
  end

  def can_register?(user)
    if user.banamex?
      if self.number_of_users + 1 < self.limit_banamex
        true
      else
        false
      end
    else
      if self.number_of_users + 1 < self.limit
        true
      else
        false
      end
    end
  end
end
