class Workshop < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :location

  validates :speaker_id, presence: true

  # Friendly Id
  extend FriendlyId
  friendly_id :title, use: :slugged
end
