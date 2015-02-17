class Event < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :location

  validates :name, :speaker_id, :location_id, presence: true

  # Friendly Id
  extend FriendlyId
  friendly_id :name, use: :slugged
end
