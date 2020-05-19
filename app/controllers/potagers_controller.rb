class PotagersController < ApplicationController

def index
  @potagers = Potager.all
end

def new
  @potager = Potager.new
end

def show
  @potager = Potager.find(params[:id])
end

def create
  @potager = Potager.new(params[:potager])
  if @potager.save
    flash[:success] = "Votre potager est maintenant disponible"
    redirect_to @potager
  else
    flash[:error] = "Quelque chose ne s'est pas passé comme prévu"
    render 'new'
  end
end

private
  def potager_params
    params.require(:potager).permit(:name, :address, :price, :surface, :photo)
  end


end
