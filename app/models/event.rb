class Event < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :location

  # Friendly Id
  extend FriendlyId
  friendly_id :name, use: :slugged
end
