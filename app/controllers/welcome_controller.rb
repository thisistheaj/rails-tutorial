class WelcomeController < ApplicationController
  def index

  end

  # def user
  #   @user = Hash.new
  #   @user[:age] = 18
  #
  #   if request.get?
  #     @user[:name] = 'Gotten AJ'
  #   elsif request.post?
  # # NOTE: params[:article] == request.request_parameters()[:article]
  # # BUT - params != request.request_parameters()
  # #     @user[:name] = request.request_parameters()[:name]
  #     @user[:name] = params[:name]
  #     puts @user[:name]
  #   end
  #
  #   render json: @user
  # end
end
