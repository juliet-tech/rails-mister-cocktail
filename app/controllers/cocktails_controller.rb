class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]
# before_action :set_dose, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      @cocktail
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  # def set_dose
  #   @dose = Dose.find(params[:cocktail_id])
  # end

  def cocktail_params
    params.require(:cocktail).permit(:name, :img_url)
  end
end
