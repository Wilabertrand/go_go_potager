class PotagersController < ApplicationController
  before_action :set_potager, only: [:edit, :update, :show, :destory]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @potagers = Potager.all
  end


  def show
    @booking = Booking.new
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

    def new
      @potager = Potager.new
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
    @potager = Potager.find(params[:id])
    @potager.destroy
    redirect_to root_path
  end


  private

  def potager_params
    params.require(:potager).permit(:name, :address, :price, :surface, :photo)
  end


   def set_potager
      @potager = Potager.find(params[:id])
   end

end
