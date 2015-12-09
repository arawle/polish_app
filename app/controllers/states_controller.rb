class StatesController < ApplicationController
  before_action :set_state, only: [:show, :update, :destroy]
  before_filter :create_time, only: [:create, :update]

  def index
    @states = State.all.where(polish_id: params[:polish_id])

    render json: @states, status: :ok
  end

  def create
    @polish = Polish.find(params[:polish_id])
    @state = @polish.states.new(state_params)
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
    params.require(:state).permit(:condition, :swatched, :blog, :fill, :thinned, :box, :notes, :bottle_shot, :mani_shot, :original_owner, :for_sale, :for_swap, :obtained, :purchase_price, :size, :picture, :bottleshot)
  end

  def set_state
    @state = State.find(params[:id])
  end

  def create_time
    @polish = Polish.find(params[:polish_id])
    if state_params[:blog] == "yes"
      params[:state][:blog] = Time.zone.now
      puts state_params[:blog]
    end
    if state_params[:box] == "yes"
      params[:state][:box] = Time.zone.now
    end
    if state_params[:original_owner] == "yes"
      params[:state][:original_owner] = Time.zone.now
    end
    if state_params[:for_sale] == "yes"
      params[:state][:for_sale] = Time.zone.now
    end
    if state_params[:for_swap] == "yes"
      params[:state][:for_swap] = Time.zone.now
    end
    return state_params
  end

end