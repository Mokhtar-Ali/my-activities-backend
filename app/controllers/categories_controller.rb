class CategoriesController < ApplicationController
    def index 
        categories = Category.all
        render json: categories, except: [:updated_at]
    end 
    
    def show 
        category = Category.find(params[:id])
        activities = Activity.all.select{ |a| a.category_id == category.id}
        
        render json: {id: category.id, activities: activities}
        
    end 

    def create 
        category = Category.new(category_params)

        if category.save
            render json: category
        else 
            render json: {errors: category.errors.full_messages}
        end 

    end 

    def update 
        category = Category.find(params [:id])
        category.update(category_params)
    end 
    
    def destroy 
        category = Category.find(params[:id])
        category.destroy
    end 
    

    private
    
    def category_params 
        params.require(:category).permit(:activity_type, :image)
    end 
end





