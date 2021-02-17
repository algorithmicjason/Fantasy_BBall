class Mascot < ApplicationRecord
  belongs_to :team
  validates :name, uniqueness: true
end