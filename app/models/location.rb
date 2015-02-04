class Location < ActiveRecord::Base
  has_many :events

  # Friendly Id
  extend FriendlyId
  friendly_id :name, use: :slugged
end
