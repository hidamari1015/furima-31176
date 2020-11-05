class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    #@item = Item.order("created_at DESC")
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:title,:category_id,:status_id,:catch_copy,:price,:delivery_fee_id,:prefectures_id,:day_id).merge(user_id: current_user.id)
  end
end
