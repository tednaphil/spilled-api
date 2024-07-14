class TeasController < ApplicationController
  # before_action :set_tea, only: [:show, :update, :destroy]
  def index
    @teas = Tea.all
    render json: @teas
  end

  def show
    @tea = Tea.find(params[:id])
    render json: @tea
  end

  # add POST, PUT/PATCH, AND DELETE endpoints

end
