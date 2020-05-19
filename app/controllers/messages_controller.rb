class MessagesController < ApplicationController
    def index 
        messages = Message.all
        render json: messages 
    end 

    def show 
        message = Message.find(params[:id])
        user = User.find{ |user| user.id = message.user_id}
        render json: message

        
    end  


    def create  
        message = Message.new(message_params)

        if message.save
            chatroom = Chatroom.find(message.chatroom_id)
            ChatroomChannel.broadcast_to(chatroom, message)
            render json: message 
        else 
            render json: {errors: message.errors.full_messages}, status: 422
        end 

    end 

    private
    
    def message_params  
        params.require(:message).permit(:chatroom_id, :user_id, :content, :user_name, :user_image)
    end 
end
