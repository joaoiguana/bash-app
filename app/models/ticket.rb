class Ticket < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :price, :status, presence: true
end
