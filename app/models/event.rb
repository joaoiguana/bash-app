class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User'

  validates :name, :description, :date, :location, presence: true
end
