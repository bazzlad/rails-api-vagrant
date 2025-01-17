class Api::HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :update, :destroy]

  # GET /hotels
  def index
    @hotels = Hotel.all

    render json: @hotels
  end

  # GET /hotels/1
  def show
    render json: @hotel
  end

  # POST /hotels
  def create
    @hotel = Hotel.new(hotel_params)

    if @hotel.save
      render json: @hotel, status: :created, location: api_hotel_url(@hotel)

    else
      render json: @hotel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hotels/1
  def update
    if @hotel.update(hotel_params)
      render json: @hotel
    else
      render json: @hotel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hotels/1
  def destroy
    @hotel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hotel_params
      params.require(:hotel).permit(:name, :tags, :packages)
    end
end
