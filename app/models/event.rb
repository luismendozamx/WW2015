class Event < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :location
  belongs_to :day

  validates :name, :speaker_id, presence: true

  has_many :event_subscriptions
  has_many :users, through: :event_subscriptions

  has_many :event_waiting_lists
  has_many :user_lists, through: :event_waiting_lists, source: :user

  # Friendly Id
  extend FriendlyId
  friendly_id :name, use: :slugged

  def can_register?(user)
    if user.banamex?
      if self.number_of_users_banamex < self.limit_banamex
        true
      else
        self.number_of_users < self.limit
      end
    else
      if self.number_of_users_banamex > self.limit_banamex
        self.number_of_users_total < self.limit + self.limit_banamex
      else
        self.number_of_users < self.limit
      end
    end
  end

  def number_of_users_banamex
    self.users.where('folio between 1 and 251 or folio between 4001 and 4551').count
  end

  def number_of_users
    self.users.where('folio between 252 and 4000 or folio between 4552 and 5519').count
  end

  def number_of_users_total
    self.users.count
  end

end
