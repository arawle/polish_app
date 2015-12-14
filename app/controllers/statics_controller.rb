class StaticsController < ApplicationController

  def index
    @user = User.new
    render "layouts/application"
  end

end