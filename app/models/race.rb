class Race < ApplicationRecord

  has_many :awards
  has_many :runners, through: :awards
  
end
