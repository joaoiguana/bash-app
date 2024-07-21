class Venue < ApplicationRecord
  has_many :events

  validates :name, :address, :capacity, presence: true
end
