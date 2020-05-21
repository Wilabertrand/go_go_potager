class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
    @potagers = Potager.all
  end
    
  def home
  end
end
