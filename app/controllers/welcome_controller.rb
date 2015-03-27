class WelcomeController < ApplicationController
  def index
  end

  def bot
  end

  def input
   @message = Message.new(params[:message])
 
  @message.save
  redirect_to @message
  end
end
