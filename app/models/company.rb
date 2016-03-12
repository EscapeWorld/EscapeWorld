class Company < ActiveRecord::Base
  # incoming
  # ....

  # outgoing
  has_many :locations
end
