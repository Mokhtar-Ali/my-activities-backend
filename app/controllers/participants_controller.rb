class ParticipantsController < ApplicationController
    
    def index 
        participants = Participant.all
        render json: participants, except: [:updated_at]
    end 


    def create 
        participant = Participant.new(participant_params)

        if participant.save
            render json: participant
        else 
            render json: {errors: participant.errors.full_messages}
        end 

    end 


    private 
    
    def participant_params 
        params.require(:participant).permit(:user_id, :activity_id)
        
    end 

end


