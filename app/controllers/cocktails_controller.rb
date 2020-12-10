class CocktailsController < ApplicationController

  def index

    if params[:query].present?
      @cocktails = Cocktail.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @cocktails = Cocktail.all
    end
    @cocktail = Cocktail.new

  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new
    @reviews = Review.all
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)


  end

  private

  def cocktail_params
  params.require(:cocktail).permit(:name, :photo)
  end
end
