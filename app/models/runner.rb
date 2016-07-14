class Runner < ApplicationRecord

# don't forget before_action and authentication!

  has_many :races
  has_many :awards, through: :races

  has_secure_password

end
