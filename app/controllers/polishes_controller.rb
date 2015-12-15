class PolishesController < ApplicationController
  before_action :set_polish, only: [:show, :update, :destroy]
  before_filter :authenticate_user!

  #GET /polishes
  def index
    @polishes = Polish.all
    render json: @polishes, status: :ok
  end

  #GET /polishes/:id
  def show
    render json: @polish, status: :ok
  end

  #POST /polishes
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

  #PATCH/PUT /polishes/:id (only admins can edit a polish)
  def update
    if @polish.update(polish_params)
      render json: @polish, status: :ok
    else
      render json: @polish.errors, status: :unprocessable_entity
    end
  end

  #DELETE /polishes/:id (only admins can delete polishes)
  def destroy
    @polish.destroy
    render json: @polish, status: :ok
  end

  private
    def set_polish
      @polish = Polish.find(params[:id])
    end

    def polish_params
      params.require(:polish).permit(:brand, :collection, :releaseYear, :name, :code, :finish, :color, :picture, :url)
    end
end