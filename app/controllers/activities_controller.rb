class ActivitiesController < ApplicationController
    def index 
        activities = Activity.all
        render json: activities, except: [:updated_at]
    end 

    def show 
        activity = Activity.find(params[:id]) 
        # chatroom = Chatroom.all.find{ |c| c.activity_id == activity.id}
        
        render json: activity
        # {id: activity.id, name: activity.name, activity_type: activity.activity_type, rating: activity.rating, image: activity.image, user_id: activity.user_id, category_id: activity.category_id, chatroom: chatroom}
        
    end 
 
    

    def create 
        # byebug
        activity = Activity.new(activity_params)

        if activity.save
            render json: activity
        else 
            render json: {errors: activity.errors.full_messages}
        end 

    end 

    def edit 
        
        @activity = Activity.find(params[:id])
        render json: @activity
    end 

    def update 
        @activity = Activity.find(params[:id])
        @activity.update(activity_params)
        render json: @activity
    end 

    def destroy 
        activity = Activity.find(params[:id])
        activity.destroy
    end 

    private 
    
    def activity_params 
        params.require(:activity).permit(:name, :activity_type, :rating, :image, :user_id, :category_id, :about, :date, :address, :lat, :lng)
        
    end 

end
