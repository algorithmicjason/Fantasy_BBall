class Athlete < ApplicationRecord
  belongs_to :team

  validates :jersey, numericality: true
  validates :height , numericality: true
  
end
