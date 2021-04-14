class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :edit, :destroy, :update]
  def index
    @flats = Flat.all
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    redirect_to @flat
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

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :number_of_guests, :price_per_night)
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end
end
