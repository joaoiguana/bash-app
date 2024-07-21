class User < ApplicationRecord
  has_secure_password
  has_many :events, foreign_key: 'organizer_id'
  has_one :profile

  # Add roles like admin, organizer, attendee
  enum role: { admin: 'admin', organizer: 'organizer', attendee: 'attendee' }

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
