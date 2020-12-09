class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def create

  end

  private

  def article_params
  params.require(:cocktail).permit(:name, :photo)
  end
end
