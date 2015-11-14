class StatesController < ApplicationController
  # before_action :set_state, only: [:show, :update, :destroy]

  def index
    @polish = Polish.find(params[:polish_id])

    render json: @states, status: :ok
  end

  def create

    @polish = Polish.find(params[:polish_id])
    @state = @polish.states.new state_params
    if @state.save
      render json: @state, status: :created
    else
      render json: @state.errors, status: :unprocessable_entity
    end
  end

  def update
    @state.update(state_params)
    if @state.save
      render json: @state, status: :ok
    else
      render json: @state.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @state.destroy
    render json: @state, status: :ok
  end

  private

  def state_params
    params.require(:state).permit(:condition, :swatched, :blog, :fill, :thinned, :box, :notes, :bottle_shot, :mani_shot, :original_owner)
  end

  def set_state
    @state = State.find(params[:id])
  end

end