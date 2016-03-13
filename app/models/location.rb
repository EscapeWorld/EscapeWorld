class Location < ActiveRecord::Base

  # incoming
  belongs_to :company
  has_many :rooms

  # outgoing
  # ....

  # Methods / Validations
  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    "#{self.street} #{self.city} #{self.state} #{self.zip}"
  end

end
