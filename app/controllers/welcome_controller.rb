class WelcomeController < ApplicationController
  def index
  end

  def bot
  end

  def fresponse
        @response = Response.where("original = ?", params[:original])
	render json: @response.first
  end

end
