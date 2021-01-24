class Api::V1::CarsController < ApplicationController
  before_action :set_car, only: %i[show update destroy]
  before_action :authorized

  # GET /cars
  def index
    @cars = Car.all

    render json: @cars
  end

  # GET /cars/1
  def show
    render json: @car
  end

  # POST /cars

  def create
    @user = User.find(params[:user_id])
    if @user.admin == true
      @car = @user.cars.create(car_params)
      if @car.valid?
        render json: { car: @car }, status: 200
      else
        render json: { error: @car.errors }, status: 400
      end
    else
      render json: { status: "you're not an admin" }, status: 400
    end
  end
  # PATCH/PUT /cars/1

  def update
    if @car.update(car_params)
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cars/1
  def destroy
    @car.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_car
    @car = Car.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def car_params
    params.permit(:name, :model, :manufacturer, :category, :avatar, :speed, :country, :price)
  end
end
