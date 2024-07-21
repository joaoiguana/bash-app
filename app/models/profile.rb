class Profile < ApplicationRecord
  belongs_to :user

  validates :contact_info, presence: true
end
