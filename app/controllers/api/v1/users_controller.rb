class Api::V1::UsersController < ApplicationController
  def index
    # render json: Cat.all
    # render json: Cat.all, include: ['hobbies']
    # render json: Cat.includes(:hobbies), include: ['hobbies']
    render json: User.includes(:addresses), include: ['addresses']
  end

  def show

  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def user_params

  end
end
