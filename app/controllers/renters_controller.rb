class RentersController < ApplicationController

  def new
    @renter = Renter.new
  end

  def create
    @renter = Renter.new(renter_params)
    if @renter.save
      session[:renter_id] = @renter.id
      redirect_to renter_login_path
    else
      render :new
    end
  end

  def show
    @renter = Renter.find(params[:id])
  end

  private

  def renter_params
    params.require(:renter).permit(:username, :password, :name)
  end

end
