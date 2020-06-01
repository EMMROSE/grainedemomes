class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: :admin

  def home
    @categories = Category.all
    @genres = Genre.all
    @sizes = Size.all
    @products = Product.all
    # Category filter
    @products = @products.where(category: params[:category]) if params[:category].present?
    # Genre filter
    @products = @products.where(genre: params[:genre]) if params[:genre].present?
    # Size filter
    @products = @products.where(size: params[:size]) if params[:size].present?
  end

  def admin
    @categories = Category.all
    @genres = Genre.all
    @sizes = Size.all
    @products = Product.all
    # Category filter
    @products = @products.where(category: params[:category]) if params[:category].present?
    # Genre filter
    @products = @products.where(genre: params[:genre]) if params[:genre].present?
    # Size filter
    @products = @products.where(size: params[:size]) if params[:size].present?
  end

end
