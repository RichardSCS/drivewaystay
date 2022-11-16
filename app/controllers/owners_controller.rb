class OwnersController < ApplicationController

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    @owner.spots = 0
    if @owner.save
      session[:owner_id] = @owner.id
      redirect_to owner_login_path
    else
      render :new
    end
  end

  def show
    @owner = Owner.find(params[:id])
  end

  private

  def owner_params
    params.require(:owner).permit(:username, :password, :name, :street, :city, :state)
  end

end
