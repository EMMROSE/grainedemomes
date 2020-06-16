class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

    def index
      # Category filter
      @products = @products.where(category: params[:category]) if params[:category].present?
      # Genre filter
      @products = @products.where(genre: params[:genre]) if params[:genre].present?
      # # Size filter
      @products = @products.article.where(size: params[:size]) if params[:size].present?

      @products = Product.all
    end

    def research
      if params[:query].present?
        @products = Product.search_by_name_sku(params[:query])
      else @products = Product.all
      end
      if @products.count == 0
        @products = Product.all
      end
    end

    def show
      @product = Product.find(params[:id])
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        redirect_to root_path
        flash[:notice] = "Votre produit a bien été enregistré."
      else
        render :new
        flash[:alert] = "Veuillez compléter le formulaire s'il vous plaît."
      end
    end

    def edit
      @product = Product.find(params[:id])
    end

    def update
      @product = Product.find(params[:id])
      if @product.update(product_params)
        redirect_to product_path(@product)
      else render :edit
      end
    end

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
      redirect_to products_path
    end

    private

    def product_params
      params.require(:product).permit(:name, :description, :genre_id, :category_id, :sku, :cover, :photo, :price_cents, :old_price_cents, :stock)
    end
    # Ne pas oublier de remettre photos: [] dans les params et :size_id (enlever pour article)
end
