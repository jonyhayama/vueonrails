class Api::HomeController < ApplicationController
  def index
    render json: { welcome: "Yay! you're on rails!" }
  end
end 