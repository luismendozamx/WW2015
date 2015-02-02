class Event < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :location

  # Make slug the id for params.
  def to_param
    slug
  end

  # Return Speaker based on id.
  def speaker
    Speaker.find_by(id: self.speaker_id)
  end

  # Return Location based on id.
  def location
    Location.find_by(id: self.location_id)
  end
end
