class Coach < ApplicationRecord
  belongs_to :team

  validates :name, presence: true
  validates :age, numericality: { greater_than: 30,
    too_short: "%{count} is not valid, must be at least 30 years old to be a Coach" }
  validates :years_of_experience, numericality: true
  validates :bio, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
    validates :championships , numericality: true
    validates :team_id, uniqueness: true
end
