class Speaker < ActiveRecord::Base
  has_many :events
  validates :first_name, :last_name, presence: true

  # Friendly Id
  extend FriendlyId
  friendly_id :full_name, use: :slugged

  # Create a full name
  def full_name
    first_name + " " + last_name
  end

end
