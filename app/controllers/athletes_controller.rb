class AthletesController < ApplicationController
    before_action :find_athlete, only: [:show, :edit, :update, :destroy]
    
    
    def index
        @athletes = Athlete.all 
    end 

    def show
        
    end
    
    def new 
        @athlete = Athlete.new 
    end 

    def create
        @athlete = Athlete.create(athlete_params)
        if @athlete.valid?
            redirect_to athletes_path
        else 
            flash[:errors] = @athlete.errors.full_messages
            redirect_to new_athlete_path
        end 
    end 

    def edit 

    end
    
    def update 
        find_athlete
        if @athlete.update(athlete_params)
        redirect_to athletes_path
            else 
                flash[:errors] = @athlete.errors.full_messages
                redirect_to edit_athlete_path(@athlete)
            end 
    end 

    def destroy 
        find_athlete.destroy
        redirect_to athletes_path

    end

    private 

    def athlete_params
        params.require(:athlete).permit(:team_id, :name, :position, :jersey, :height, :years_of_experience, :championships)
    end 

    def find_athlete
        @athlete = Athlete.find_by(id: params[:id])
    end         
end
