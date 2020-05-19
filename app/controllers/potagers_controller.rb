class PotagersController < ApplicationController

def index
  @potagers = Potagers.all
end

def show
  @potager = Potagers.find(params[:id])
end

def new
  @potager = Potagers.new
end

def create
  @potager = Potagers.new(params[:potager])
  if @potager.save
    flash[:success] = "Votre potager est maintenant disponible"
    redirect_to @potager
  else
    flash[:error] = "Quelque chose ne s'est pas passé comme prévu"
    render 'new'
  end
end

private



end
