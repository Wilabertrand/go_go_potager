class PotagersController < ApplicationController
  before_action :set_potager, only: [:edit, :update, :show, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @potagers = Potager.geocoded
    @markers = @potagers.map do |potager|
      { lat: potager.latitude, lng: potager.longitude }
      
    if params[:query].present?
      @potagers = Potager.global_search(params[:query])
    else
      @potagers = Potager.all
    end
  end


  def show
    @booking = Booking.new
    # @markers = { lat: potager.latitude, lng: potager.longitude }

  end

  def create
    @potager = Potager.new(potager_params)
    @potager.user = current_user
    if @potager.save
      flash[:success] = "Votre potager est maintenant disponible"
      redirect_to dashboard_path
    else
      flash[:error] = "Quelque chose ne s'est pas passé comme prévu"
      render 'new'
    end
  end

  def new
    @potager = Potager.new
  end

  def edit
  end

  def update
    @potager.update(potager_params)
    redirect_to dashboard_path
  end

  def destroy
    @potager.destroy
    redirect_to dashboard_path
  end


  private

  def potager_params
    params.require(:potager).permit(:name, :address, :description, :price, :surface, :photo)
  end

  def set_potager
    @potager = Potager.find(params[:id])
  end

end
