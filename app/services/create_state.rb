class CreateState
  def initialize(params)
    @params = params

    @permitted = params.permit(
      :condition,
      :swatched,
      :fill,
      :thinned,
      :notes,
      :bottle_shot,
      :mani_shot,
      :obtained,
      :purchase_price,
      :size,
      :picture,
      :bottleshot,
      :user_id
    )
  end

  def run
    state = State.new(@permitted)

    timestamp = Time.zone.now

    state.blog_at           = timestamp if @params[:blog] == 'yes'
    state.box_at            = timestamp if @params[:box] == 'yes'
    state.original_owner_at = timestamp if @params[:original_owner] == 'yes'
    state.for_sale_at       = timestamp if @params[:for_sale] == 'yes'
    state.for_swap_at       = timestamp if @params[:for_swap] == 'yes'

    state
  end
end