class WelcomeController < ApplicationController
  def index
  end

  def bot
  end

  def fresponse
        @response = Response.where("original = ?", params[:original]).order(total: :desc).first
	render json: @response
  end

  def finput
	@response = Response.new()
	@response.original = params[:o]
	@response.sender = params[:s]
	@response.body = params[:b]
	@response.up = 1
	@response.down = 0
	@response.total = 1
	@response.save
	render json: @response
  end

  def fup
	u = Address.find_by_cid(params[:id])
	u.up = u.up + 1
	u.total = u.total + 1
	u.save
  end

  def fdown
	u = Address.find_by_cid(params[:id])
	u.down = u.down + 1
	u.total = u.total - 1
	u.save
  end

end
