class PaymentGiftsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
      @order_gift = OrderGift.find(params[:order_gift_id])
    end
  end
end
