class Pet < ActiveRecord::Base
  validates_presence_of :name

  has_many :owners,
    inverse_of: :pet
end
