class WelcomeController < ApplicationController
  def index
  end

  def bot
  end

  def fresponse
        @response = Response.where("body = ?", params[:body])
	render json: @response.first
  end

end
