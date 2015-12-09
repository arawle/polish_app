class UpdateState
  def initialize(id, params)
    @id = id
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
      :bottleshot
    )
  end

  def run
    state = State.find(@id)
    state.assign_attributes(@permitted)

    timestamp = Time.zone.now

    if state.blog_at.nil? && params[:blog] == 'yes'
      state.blog_at = timestamp
    end

    if state.box_at.nil? && @params[:box] == 'yes'
      state.box_at = timestamp
    end

    if state.original_owner_at.nil? && @params[:original_owner] == 'yes'
      state.original_owner_at = timestamp
    end

    if state.for_sale_at.nil? && @params[:for_sale] == 'yes'
      state.for_sale_at = timestamp
    end

    if state.for_swap_at.nil? && @params[:for_swap] == 'yes'
      state.for_swap_at = timestamp
    end

    state
  end
end