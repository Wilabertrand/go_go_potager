class PotagersController < ApplicationController
  before_action :set_potager, only: [:edit, :update, :show, :destory]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @potagers = Potager.all
  end

  def show
  end

  def new
    @potager = Potager.new
  end

  def create
    if @potager.save(potager_params)
      flash[:success] = "Votre potager est maintenant disponible"
      redirect_to @potager
    else
      flash[:error] = "Quelque chose ne s'est pas passé comme prévu"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @potager.update(potager_params)
      flash[:success] = "Votre potager a été modifié"
      redirect_to @potager
    else
      flash[:error] = "Quelque chose ne s'est pas passé comme prévu"
      render 'new'
    end
  end

  def destroy
    @potager.destroy
    flash[:success] = "Votre potager a été supprimé"
    redirect_to @potagers
  end


  private

  def set_potager
    @potager = Potager.find(params[:id])
  end
  
  def potager_params
    params.require(:potager).permit(:name, :address, :description, :price, :surface, :img_url, :user_id)
  end

end
