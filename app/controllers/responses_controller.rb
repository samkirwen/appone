class ResponsesController < ApplicationController
	def new
	end

	def index
	    @responses = Response.all
	end

	def create
		@response = Response.new(params[:response])
		@response.save
		render text: params[:response].inspect
	end

	def fresponse
		render text: "response found!"
	end

	def show
             @response = Response.find(params[:id])
        end
 
end
