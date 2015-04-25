class WelcomeController < ApplicationController
  def index
  end

  def bot
  end

  def fresponse
        @response = Response.where("original = ?", params[:original])
	render json: @response.first
  end

  def finput
	@response = Response.new()
	@response.original = params[:o]
	@response.sender = params[:s]
	@response.body = params[:b]
	@response.save
	render json: @response
  end

end
