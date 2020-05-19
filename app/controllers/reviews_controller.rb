class ReviewsController < ApplicationController
    def index 
        reviews = Review.all
        render json: reviews, except: [:updated_at]
    end 

    def show 
        review = Review.find(params[:id])
        # atmospheres = Atmosphere.all.select{ |a| a.review_id == review.id}
        
        render json: review       
        # {id: review.id, atmospheres: atmospheres}
        
    end 

    def create 
        review = Review.new(review_params)

        if review.save
            render json: review
        else 
            render json: {errors: review.errors.full_messages}
        end 

    end 

    def update 
        review = Review.find(params [:id])
        review.update(review_params)
    end 

    def destroy 
        review = Review.find(params[:id])
        review.destroy
    end 

    private 
    
    def review_params 
        params.require(:review).permit(:review, :rating, :user_id, :activity_id)
        
    end 
end
