class Team < ApplicationRecord
    has_many :athletes
    has_one :coach 
    has_one :mascot
    has_many :fan_clubs
end
