class PaymentsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
  end
end
