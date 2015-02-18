class Day < ActiveRecord::Base
  has_many :events
  has_many :workshops
end
