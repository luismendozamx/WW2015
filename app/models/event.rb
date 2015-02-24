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
end
