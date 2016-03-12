class Company < ActiveRecord::Base
  # incoming
  # ....

  # outgoing
  has_many :locations
  belongs_to :user
end
