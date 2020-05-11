class LineItemsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @line_item = LineItem.new
    @line_item.cart = @current_cart
    @line_item.product = Product.find(params[:product_id])
    @line_item.save
  end

  # def add_quantity
  #   line_item = LineItem.find(params[:id])
  #   line_item.quantity += 1
  #   line_item.save
  #   redirect_to cart_path
  # end

  # def reduce_quantity
  #   line_item = LineItem.find(params[:id])
  #   if line_item.quantity > 1
  #     line_item.quantity -= 1
  #   end
  #   line_item.save
  #   redirect_to cart_path
  # end

  def destroy
    line_item = LineItem.find(params[:id])
    line_item.destroy
    redirect_to cart_path
  end
end
