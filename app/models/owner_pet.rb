class OwnerPet < ActiveRecord::Base

  validates_presence_of :owner
  validates_presence_of :pet

  belongs_to :pet,
    inverse_of: :owner_pets

  belongs_to :owner,
    inverse_of: :owner_pets

end
