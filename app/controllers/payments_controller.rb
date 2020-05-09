class PaymentsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    if current_user
      @order = current_user.orders.where(state: 'pending').find(params[:order_id])
    else
      @order = Order.find(params[:order_id])
    end
  end
end
