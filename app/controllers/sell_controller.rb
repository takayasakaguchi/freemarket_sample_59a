class SellController < ApplicationController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def buydetails
  end
  private
  def product_params
    params.require(:product).permit( :name, :description, :category_id, :condition_id, :size_id, :brand, :delivery_charge_id, :delivery_way_id, :prefecture_id, :delivery_days_id, :price, images: []).merge(user_id: current_user.id)
  end
  # def move_to_index
  #   redirect_to :action => 'index' unless user_signed_in?
  # end
end
