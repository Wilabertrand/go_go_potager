class DashboardsController < ApplicationController
  def dashboard
    @potagers = current_user.potagers
    @bookings = current_user.bookings
  end
end
