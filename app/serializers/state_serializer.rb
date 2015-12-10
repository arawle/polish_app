class StateSerializer < ActiveModel::Serializer
  attributes %i(
    condition
    swatched
    fill
    thinned
    notes
    bottle_shot
    mani_shot
    obtained
    purchase_price
    size
    bottleshot
    blog
    box
    original_owner
    for_sale
    for_swap
    id
  )

  def size
    object.size.to_i
  end

  def blog
    object.blog_at ? 'yes' : 'no'
  end

  def box
    object.box_at ? 'yes' : 'no'
  end

  def original_owner
    object.original_owner_at ? 'yes' : 'no'
  end

  def for_sale
    object.for_sale_at ? 'yes' : 'no'
  end

  def for_swap
    object.for_swap_at ? 'yes' : 'no'
  end
end
