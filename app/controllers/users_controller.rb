class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @collection = Collection.find_by user_id: current_user.id

    render json: @collection, status: :ok
  end

end