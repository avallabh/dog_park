class Pet < ActiveRecord::Base
  validates_presence_of :name

  has_many :owner_pets,
    inverse_of: :pet

  has_many :owners, through: :owner_pets,
    inverse_of: :pet

  # has_many :owner_pets,
  #   inverse_of: :owner

  # has_many :pets, through: :owner_pets,
  #   inverse_of: :pet
end
