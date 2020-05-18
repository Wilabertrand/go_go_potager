class PotagersController < ApplicationController

def index
  @potagers = Potagers.all
end

def show
  @potager = Potagers.find(params[:id])
end

end
