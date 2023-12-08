module ApplicationHelper

  def owner_logged_in?
    !!session[:owner_id]
  end

  def renter_logged_in?
    !!session[:renter_id]
  end

  def current_owner
    @current_owner ||= Owner.find_by_id(session[:owner_id]) if !!session[:owner_id]
  end

  def current_renter
    @current_renter ||= Renter.find_by_id(session[:renter_id]) if !!session[:renter_id]
  end

end
