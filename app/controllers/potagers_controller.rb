class PotagersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

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
  @potager = Potager.new(potager_params)
  @potager.user = current_user
  if @potager.save
    flash[:success] = "Votre potager est maintenant disponible"
    redirect_to @potager
  else
    flash[:error] = "Quelque chose ne s'est pas passé comme prévu"
    render 'new'
  end
end

def update
    respond_to do |format|
      if @potager.update(potager_params)
        format.html { redirect_to @potager, notice: 'Potager was successfully updated.' }
        format.json { render :show, status: :ok, location: @potager }
      else
        format.html { render :edit }
        format.json { render json: @potager.errors, status: :unprocessable_entity }
      end
    end
  end

def destroy
  @potager.destroy
  respond_to do |format|
      format.html { redirect_to potagers_url, notice: 'Potager was successfully destroyed.' }
      format.json { head :no_content }
    end
end

private
  def potager_params
    params.require(:potager).permit(:name, :address, :price, :surface, :photo)
  end
end
