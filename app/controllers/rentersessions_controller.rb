class RentersessionsController < ApplicationController

  def login
  end
  
  def create
    @renter = Renter.find_by(username: params[:username])
    ##authenticate user credentials
    if !!@renter && @renter.authenticate(params[:password])
      #set session and redirect on success
      session[:renter_id] = @renter.id
      redirect_to renter_path(@renter)
    else
      #error message on fail
      message = "Something went wrong! Make sure your username and password are correct."
      redirect_to renter_login_path, notice: message
    end
  end
  
end
