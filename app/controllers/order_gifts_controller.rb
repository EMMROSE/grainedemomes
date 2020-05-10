class OrderGiftsController < ApplicationController
  skip_before_action :authenticate_user!

  # def new
  #   @order_gift = OrderGift.new
  #   @gift = Gift.find(params[:gift_id])
  # end

  def create
    @gift = Gift.find(params[:gift_id])
    @order_gift = OrderGift.new(order_gift_params)
    @order_gift.amount = @gift.price
    @order_gift.user = current_user if current_user
    if @order_gift.save
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: @gift.sku,
          amount: @gift.price_cents,
          currency: 'eur',
          quantity: 1
        }],
        success_url: order_url(@order_gift),
        cancel_url: order_url(@order_gift)
      )
      @order_gift.update(checkout_session_id: session.id)
      redirect_to new_order_gift_payment_gift(@order_gift)
    else
      render :new
    end
  end

  def show
    if current_user
      @order_gift = current_user.order_gifts.find(params[:id])
    else
      @order_gift = OrderGift.find(params[:id])
    end
  end

  def index
    @order_gifts = current_user.order_gifts
  end

  def without_login
    session[:without_login] = true
  end

  private

  def order_gift_params
    params.require(:order_gift).permit(:fullname, :email, :fullname_guest, :email_guest)
  end


  def customer_email
    current_user ? current_user.email : nil
  end

  def save_user_address
    if @order.user != nil
      current_user.attributes = @order.attributes.except("id", "email", "status", "note", "amount_cents", "amount_currency", "checkout_session_id", "user_id", "updated_at", "created_at")
      current_user.save
    end
  end
end
