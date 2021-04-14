class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def edit
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(flat_params)
    redirect_to flat_path(@flat)
  end

  def show
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :number_of_guests, :price_per_night)
  end
end
