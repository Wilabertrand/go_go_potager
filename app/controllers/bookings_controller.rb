class BookingsController < ApplicationController
	before_action :set_potager, only: [:show, :destroy]
	skip_before_action :authenticate_user!, only: [:new]

	# def new
	# 	@booking = Booking.new
	# end

	# def index
	#  	@bookings = current_user.bookings
	# end 

	def show
	end


 	def create
		@potager = Potager.find(params[:potager_id])
		@booking = Booking.new(booking_params)
		@booking.potager = @potager
		@booking.user = current_user
		if @booking.save
			flash[:success] = "Votre potager est maintenant réservé"
			redirect_to dashboard_path
		else
			flash[:error] = "Quelque chose ne s'est pas passé comme prévu"
			render @potager
		end
	end

	def destroy
		@potager = Potager.find(params[:potager_id])
		@booking.potager = @potager
    	@booking.destroy
    	redirect_to dashboard_path
	end

	private

	def booking_params
  		params.require(:booking).permit(:potager, :user, :start_date, :end_date)
	end
  
	def set_potager
	  @potager = Potager.find(params[:id])
	end
end

