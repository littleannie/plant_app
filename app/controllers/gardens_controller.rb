class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_garden, only: %i[show edit update destroy]

  def index
    @gardens = Garden.all
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    if @garden.save
      redirect_to garden_path(@garden)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @garden.update(garden_params)
      redirect_to garden_path(@garden)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @garden.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  def garden_params
    params.require(:garden).permit(:name, :description, :location)
  end
end
