class CartsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @cart = @current_cart
    @line_items = @cart.line_items.order(:created_at)
  end

  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end
end
