class StaticPagesController < ApplicationController

  caches_page :home, gzip: :best_speed

  respond_to :html

  def home
    open_application = session[:app] || ""
    session[:app] = nil
    render :home, locals: { open_application: open_application } 
  end

end
