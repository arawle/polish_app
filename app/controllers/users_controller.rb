class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @collection = Collection.where user_id: current_user.id
    @polishes = []

    @collection.each do |polish|
      @polishes.push((Polish.where id: polish.polish_id)[0])
    end

    render json: @polishes, status: :ok
  end

end