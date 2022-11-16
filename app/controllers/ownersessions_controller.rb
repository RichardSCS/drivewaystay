class OwnersessionsController < ApplicationController

  def login
  end

  def create
    @owner = Owner.find_by(username: params[:username])
    ##authenticate user credentials
    if !!@owner && @owner.authenticate(params[:password])
      #set session and redirect on success
      session[:owner_id] = @owner.id
      redirect_to owner_path(@owner)
    else
      #error message on fail
      message = "Something went wrong! Make sure your username and password are correct."
      redirect_to owner_login_path, notice: message
    end
  end

end
