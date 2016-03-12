class Location < ActiveRecord::Base
  # incoming
  belongs_to :company
  has_many :rooms

  # outgoing
  # ....
end
