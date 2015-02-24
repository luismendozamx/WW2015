class Workshop < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :location
  belongs_to :day

  validates :speaker_id, presence: true

  has_many :workshop_subscriptions
  has_many :users, through: :workshop_subscriptions

  # Friendly Id
  extend FriendlyId
  friendly_id :title, use: :slugged
end
