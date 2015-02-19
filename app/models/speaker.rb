class Speaker < ActiveRecord::Base
  has_many :events
  belongs_to :category

  validates :first_name, presence: true

  # Friendly Id
  extend FriendlyId
  friendly_id :full_name, use: :slugged

  # Create a full name
  def full_name
    if last_name != nil
      first_name + " " + last_name
    else
      first_name
    end
  end

end
