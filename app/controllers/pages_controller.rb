class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
    
  def home
    @potagers=Potager.last(3)
  end
end
