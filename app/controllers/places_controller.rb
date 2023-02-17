# frozen_string_literal: true

class PlacesController < ApplicationController
  def index
    render locals: { places: Place.all }
  end

  def show
    render locals: { place: }
  end

  def new
    render locals: { place: Place.new }
  end

  def edit
    render locals: { place: }
  end

  def create
    place = Place.new(place_params.merge(account: current_account))
    if place.save
      raise
      redirect_to places_path
    else
      render :new, locals: { place: }, status: :unprocessable_entity
    end
  end

  def update
    return redirect_to places_path if place.update!(place_params)

    render 'edit', locals: { place: }
  end

  def place
    @place ||= Place.find(params[:id])
  end

  def destroy
    @place.destroy
    return redirect_to places_path, notice: 'User deleted.' if places.destroy

    redirect_to places_path, flash: { error: 'User could not be deleted.' }
  end

  def place_params
    params.require(:place).permit(:id, :name, :tags, :image, :details, address_attributes: [
                                    :id, :line1, :line2, :country, :state, :city, :post_code,
                                    { location_attributes: %i[id lat lon] }
                                  ])
  end
end
