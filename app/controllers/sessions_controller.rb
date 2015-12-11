class SessionsController < ApplicationController

  def attempt_login
    if params[:username].present? and params[:password].present?
      found_user = User.find_by_username params[:username]
      puts found_user
      if found_user and found_user.authenticate params[:password]
        session[:user_id] = found_user.id
        render json: {success: "Logged in successfully!", user: {id: found_user.id, username: found_user.username}}
      else
        render json: {error: "Invalid login"}
      end
    else
      render json: {error: "Please enter your username and password!"}
    end
  end

  def logout
    session[:user_id] = nil
    render json: {message: "You have been logged out!"}
  end

end