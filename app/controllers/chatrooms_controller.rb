class ChatroomsController < ApplicationController
    def index 
        chatrooms = Chatroom.all
        render json: chatrooms, except: [:created_at, :updated_at]
    end 

    def show 
        chatroom = Chatroom.find(params[:id])
        messages = Message.all.select{ |m| m.chatroom_id == chatroom.id}
        
        render json: {id: chatroom.id, activity_id: chatroom.activity_id, messages: messages}
        
    end 

    def create 
        chatroom = Chatroom.new(chatroom_params)

        if chatroom.save
            render json: chatroom
        else 
            render json: {errors: chatroom.errors.full_messages}
        end 

    end 

    def update 
        chatroom = Chatroom.find(params [:id])
        chatroom.update(chatroom_params)
    end 

    def destroy 
        chatroom = Chatroom.find(params[:id])
        chatroom.destroy
    end 

    private
    
    def chatroom_params  
        params.require(:chatroom).permit(:activity_id)
    end 
end 
