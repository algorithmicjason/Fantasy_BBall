class Athlete < ApplicationRecord
  belongs_to :team
  validates :name, presence: true
  validates :jersey, numericality: true
  #validates :height, :inclusion => 70..100
    #{:message => "needs to be atleast 5'6 feet tall to join"}
  validates :position, inclusion: { in: ["Small " + "Forward" , "Power " + "Forward" , "Center" , "Point " + "Guard" , "Shooting " + "Guard"],
    message: "is not a valid please try these options 'Small Forward' , 'Power Forward' , 'Center' , 'Point Guard' , 'Shooting Guard'" }
  validates :championships , numericality: true
  validates :years_of_experience, numericality: true

  # dependent on : team

end
