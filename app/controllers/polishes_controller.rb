class PolishesController < ApplicationController
  before_action :set_polish, only: [:show, :update, :destroy]
  before_filter :authenticate_user!, only: [:create, :update, :destroy]

  def index
    @polishes = Polish.all
    render json: @polishes, status: :ok
  end

  def show
    render json: @polish, status: :ok
  end

  def create
    @polish = Polish.new(polish_params)
    if @polish.save
      polishObj = {}
      polishObj[:url] = @polish.picture.url(:original)
      @polish.update(polishObj)
      render json: @polish, status: :created
    else
      render json: @polish.errors, status: :unprocessable_entity
    end
  end

  def update
    if @polish.update(polish_params)
      render json: @polish, status: :ok
    else
      render json: @polish.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @polish.destroy
    render json: @polish, status: :ok
  end

  private
    def set_polish
      @polish = Polish.find(params[:id])
    end

    def polish_params
      params.require(:polish).permit(:brand, :collection, :releaseYear, :name, :code, :finish, :color, :picture, :url, :polish_ids => [])
    end
end