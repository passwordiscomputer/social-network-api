class PostsController < ApplicationController

  def create
    @item = Item.new(item_params)

    if @item.save
      #iterate through each of the files
      params[:item][:document_data].each do |file|
          @item.documents.create!(:document => file)
          #create a document associated with the item that has just been created
      end
      render :show, status: :created, location: @post
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def show
    @item = Item.find(params[:id])
    render :show, status: :created, location: @post
  end
end
