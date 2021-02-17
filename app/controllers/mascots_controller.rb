class MascotsController < ApplicationController
    before_action :find_mascot, only: [:show, :edit, :update, :destroy]
    
    
    def index
        @mascot = Mascot.all 
    end 

    def new 
        @mascot = Mascot.new 
    end 

    def create
        @mascot = Mascot.create(mascot_params)
        if @mascot.valid?
            redirect_to mascots_path
        else 
            flash[:errors] = @mascot.errors.full_messages
            redirect_to new_mascot_path
        end 
    end 


    def update 
        find_mascot
        @mascot.update(mascot_params)
        @mascot.save
        redirect_to mascots_path
    end 

    def destroy 
        find_mascot.destroy
        redirect_to mascots_path
    end

    private 

    def mascot_params
        params.require(:mascot).permit(:team_id, :name, :character, :bio)
    end 

    def find_mascot
        @mascot = Mascot.find_by(id: params[:id])
    end         
end
