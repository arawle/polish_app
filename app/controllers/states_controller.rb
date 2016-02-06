class StatesController < ApplicationController
  before_filter :authenticate_user!, only: [:create, :update, :destroy]

  def index
    @states = State.all.where(polish_id: params[:polish_id])
    render json: @states, status: :ok
  end

  def show
    @state = State.find(params[:id])
  end

  def create
    @state = CreateState.new(params[:state].merge(user_id: current_user.id)).run
    @state.polish = Polish.find(params[:polish_id])

    @user = User.find(current_user.id)

    @user.polishes << @state.polish
    @collection = @user.polishes.find(params[:polish_id])
    @collection.save

    if @state.save
      render json: @state, status: :created
    else
      render json: @state.errors, status: :unprocessable_entity
    end
  end

  def update
    @state = UpdateState.new(params[:id], params[:state]).run

    if @state.save
      render json: @state, status: :ok
    else
      render json: @state.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @state = State.find(params[:id])
    @state.destroy

    @user = User.find(current_user.id)
    @collection = @user.polishes.find(params[:polish_id])
    @collection.destroy

    render json: @state, status: :ok
  end
end