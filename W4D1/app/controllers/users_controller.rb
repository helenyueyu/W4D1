class UsersController < ApplicationController
  def index 
    users = User.all
    render json: users
  end

  def create
    user = User.new(user_params)
    # replace the `user_attributes_here` with the actual attribute keys
    if user.save
      render json: user
    else 
      render json: user.errors.full_messages, status: 418 
    end
  end
  
  def show
    user = User.find(params[:id])
    render json: user 
  end

  def update 
    # Haven't gone over it in lecture yet
  end

  def destroy 
    user = User.find(params[:id])
    user.destroy 
    render json: user 
  end

  private 
  def user_params 
    params.require(:user).permit(:name, :email)
  end
end