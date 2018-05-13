def create
  @item = Item.new(item_params)

  if @item.save
    render :show, status: :created, location: @item
  else
    render json: @item.errors, status: :unprocessable_entity
  end
end
