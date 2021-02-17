class CoachesController < ApplicationController
    before_action :find_coach, only: [:show, :edit, :update, :destroy]
    def index
        @coaches = Coach.all 
    end

    def 
        find_coach
    end 
    def new 
        @coach = Coach.new 
    end 

    def create
        @coach = Coach.create(coach_params)
        if @coach.valid?
            redirect_to coaches_path
        else 
            flash[:errors] = @coach.errors.full_messages
            redirect_to new_coach_path
        end 
    end 




    def update 
        find_coach
        @coach.update(coach_params)
        @coach.save
        redirect_to coaches_path
    end 

    def destroy 
        find_coach.destroy
        redirect_to coaches_path
    end

    private 

    def coach_params
        params.require(:coach).permit(:team_id, :name, :age, :bio, :years_of_experience, :championships)
    end 

    def find_coach
        @coach = Coach.find_by(id: params[:id])
    end 

end
