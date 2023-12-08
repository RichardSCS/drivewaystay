class HomeController < ApplicationController
  def index
    @owners = Owner.all
  end
end
