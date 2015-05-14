class BeersController < ApplicationController
  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.create(beer_params)

    flash[:notice] = "#{@beer.name} added to your beer inventory"
    redirect_to beers_path
  end

  def index
    @beers = Beer.all
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])

    @beer.update(beer_params)

    flash[:notice] = "#{@beer.name} updated!"
    redirect_to beers_path
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :company, :count)
  end
end
