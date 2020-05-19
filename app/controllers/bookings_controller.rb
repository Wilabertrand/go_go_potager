class BookingsController < ApplicationController

  def index
		@bookings = current_user.bookings
	end
	
	def new
		@booking = Booking.new
	end
	
	def create
		@potager = Potager.find(params[:potager_id])
		@booking = Booking.new(booking_params)
		@booking.potager = @potager
		@booking.user = current_user
		if @booking.save
			flash[:success] = "Votre potager est maintenant réservé"
			redirect_to @potager 
		else
			flash[:error] = "Quelque chose ne s'est pas passé comme prévu"
			render 'new'
		end
	end

	def destroy
		@booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path(@booking.potager)
	end
		
	Private

  def booking_params
    params.require(:booking).permit(:potager, :user)
  end
end