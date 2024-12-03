class UsersController < ApplicationController
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        # Redirect to the user profile page (or somewhere else)
        flash[:notice] ='User created successfully!welcome #{@user.username}'
        redirect_to articles_path
      else
        # If there are errors, render the new form again
        render :new
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
  end
  