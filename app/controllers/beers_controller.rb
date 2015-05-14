class BeersController < ApplicationController
  def new
    @beer = Beer.new
  end

  def create
    beer_params = params.require(:beer).permit(:name, :company, :count)
    @beer = Beer.create(beer_params)

    flash[:notice] = "#{@beer.name} added to your beer inventory"
    redirect_to beers_path
  end

  def index
    @beers = Beer.all
  end
end
