class Room < ActiveRecord::Base
  # incoming
  belongs_to :location
  has_one :company, through: :location

  # outgoing
  has_many :photos
end
