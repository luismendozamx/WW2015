class Workshop < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :location

  # Friendly Id
  extend FriendlyId
  friendly_id :title, use: :slugged
end
