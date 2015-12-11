class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      session[:user_id] = @user.id
    else
      render :signup
    end
  end

  def update
  end

  def destroy
  end

end