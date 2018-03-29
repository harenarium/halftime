class Api::V1::AddressesController < ApplicationController

  def index
    @addresses = Address.all
    render json: @addresses
  end

  def show
    @address = Address.find(params[:id])
    render json: @address
  end

  def create
    @address = Address.create(address_params)
    render json: @address
  end

  def update
    @address = Address.find(params[:id])
    @address.update(address_params)
    render json: @address
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    render json: {}
  end

  private

  def address_params
    params.require(:address).permit(:name, :address, :lat, :lng)
  end
end
