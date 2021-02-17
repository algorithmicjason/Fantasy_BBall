class Mascot < ApplicationRecord
  belongs_to :team
  
  validates :name, uniqueness: true

  validates :bio, length: { maximum: 100,
  too_long: "%{count} characters is the maximum allowed" }
end
