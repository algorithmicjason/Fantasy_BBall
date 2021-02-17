class CoachesController < ApplicationController

    def index
        @coaches = Coach.all 
    end

    def show 
        @coach = Coach.find_by(id: params[:id])
    end     

    def new 
        @coach = Coach.new 
    end 

    def create
        @coach = Coach.create(athlete_params)
        if @coach.valid?
            redirect_to coaches_path
        else 
            flash[:errors] = @coach.errors.full_messages
            redirect_to new_coach_path
        end 
    end 


    def edit 
        @coach = Coach.find_by(id: params[:id])
    end 

    def update 
        @coach = Coach.find_by(id: params[:id])
        @coach.update(coach_params)
        @coach.save
        redirect_to coaches_path
    end 

    def destroy 

    end

    private 

    def coach_params
        params.require(:coach).permit(:team_id, :name, :age, :bio, :years_of_experience, :championships)
    end 
end
