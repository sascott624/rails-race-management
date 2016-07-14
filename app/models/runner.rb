class Runner < ApplicationRecord

  has_many :races
  has_many :awards, through: :races

end
