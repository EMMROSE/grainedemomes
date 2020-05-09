class GiftsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @gifts = Gift.all
  end
  def show
    @gift = Gift.find(params[:id])
  end
end
