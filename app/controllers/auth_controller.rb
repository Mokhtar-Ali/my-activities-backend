class AuthController < ApplicationController

    def login 
        user = User.find_by(username: params[:username])
        # byebug

        if user && user.authenticate(params[:password])
            render json: user
        else 
            render json: {errors: 'wrong name or password'}
        end 
    end 

    def auto_login
        # byebug
        if session_user
            render json: session_user
        end 
    end 
 
    
end 