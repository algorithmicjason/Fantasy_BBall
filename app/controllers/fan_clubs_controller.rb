class FanClubsController < ApplicationController

    before_action :find_fan_club, only: [:show, :edit, :update, :destroy]
    
    
    def index
        @fan_club = FanClub.all 
    end 

    def new 
        @fan_club = FanClub.new 
    end 

    def create
        @fan_club = FanClub.create(fan_club_params)
        if @fan_club.valid?
            redirect_to fan_clubs_path
        else 
            flash[:errors] = @fan_club.errors.full_messages
            redirect_to new_fan_club_path
        end 
    end 


    def update 
        find_fan_club
        @fan_club.update(fan_club_params)
        @fan_club.save
        redirect_to fan_clubs_path
    end 

    def destroy 
        find_fan_club.destroy
        redirect_to fan_clubs_path
    end

    private 

    def fan_club_params
        params.require(:fan_club).permit(:team_id, :name, :location)
    end 

    def find_fan_club
        @fan_club = FanClub.find_by(id: params[:id])
    end         
end
