class Api::V1::AddressesController < ApplicationController
  def index
    render json: Address.includes(:user), include: ['user']
  end
end
