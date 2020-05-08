class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :current_cart

  private

  def current_cart
    if current_user
      @current_cart = current_user.cart
      if @current_cart == nil
        @current_cart = Cart.create(user: current_user)
        session[:cart_id] = @current_cart.id
      else
        session[:cart_id] = @current_cart.id
      end
    end

    if current_user == nil
      if session[:cart_id]
        cart = Cart.find_by(id: session[:cart_id])
        if cart.present?
          @current_cart = cart
        else
          session[:cart_id] = nil
        end
      end

      if session[:cart_id] == nil
        @current_cart = Cart.create
        session[:cart_id] = @current_cart.id
      end
    end
  end
end
