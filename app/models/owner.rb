class Owner < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email

  has_many :owner_pets,
    inverse_of: :owner

  has_many :pets, through: :owner_pets,
    inverse_of: :pet

end
