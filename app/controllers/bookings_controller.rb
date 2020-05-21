class BookingsController < ApplicationController
	skip_before_action :authenticate_user!, only: [:new]

	# def new
	# 	@booking = Booking.new
	# end

	# def index
	#  	@bookings = current_user.bookings
	# end 

 	def create
		@potager = Potager.find(params[:potager_id])
		@booking = Booking.new
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
		@booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
	end

	private

	def booking_params
  params.require(:booking).permit(:potager, :user)
	end

end

