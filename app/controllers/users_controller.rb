class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @articles =@user.articles
  end 

  def index
    @users = User.all
  end

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

    def edit
        @user = User.find(params[:id])
    end


    def update
      @user=User.find(params[:id])
      if @user.update(user_params)
        flash[:notice] ="updated successfully"
        redirect_to articles_path
      else
        render 'edit'
      end
    end


  

  
    private
  
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
  end
  