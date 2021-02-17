class TeamsController < ApplicationController

    before_action :find_team, only: [:show, :edit, :update, :destroy]
    
    
    def index
        @teams = Team.all 
    end 

    def new 
        @team = Team.new 
    end 

    def create
        @team = Team.create(team_params)
        if @team.valid?
            redirect_to teams_path
        else 
            flash[:errors] = @team.errors.full_messages
            redirect_to new_team_path
        end 
    end 


    def update 
        find_team
        @team.update(fan_club_params)
        @team.save
        redirect_to teams_path
    end 

    def destroy 
        find_team.destroy
        redirect_to teams_path
    end

    private 

    def team_params
        params.require(:team).permit(:color, :name, :city)
    end 

    def find_team
        @team = Team.find_by(id: params[:id])
    end         

end
