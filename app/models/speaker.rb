class Speaker < ActiveRecord::Base
  has_many :events
  validates :first_name, :last_name, presence: true

  # Create a full name
  def full_name
    if last_name
      first_name + " " + last_name
    else
      first_name
    end
  end

  # Make slug the id for params.
  def to_param
    slug
  end

end
