class PromotionsController < ApplicationController

  def index
    @promotions = Promotion.all
  end

  def new
    @promotion = Promotion.new
  end

  def create
    @promotion = Promotion.new(promotion_params)
    if @promotion.save
      redirect_to admin_path
      flash[:notice] = "Votre code promo a bien été enregistré."
    else
      render :new
      flash[:alert] = "Veuillez compléter le code promo s'il vous plaît."
    end
  end

  def edit
    @promotion = Promotion.find(params[:id])
  end

  def update
    @Promotion = Promotion.find(params[:id])
    if @promotion.update(promotion_params)
      redirect_to admin_path
    else render :edit
    end
  end

  def destroy
    @promotion = Promotion.find(params[:id])
    @promotion.destroy
    redirect_to admin_path
  end

  private

  def promotion_params
    params.require(:promotion).permit(:code, :reduction)
  end
end
