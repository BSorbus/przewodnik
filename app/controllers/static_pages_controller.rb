class StaticPagesController < ApplicationController

  caches_page :home, gzip: :best_speed

  respond_to :html

  def home
    show_bi = params[:bi] == 'true'
    render :home, locals: { show_bi: show_bi } 
  end

end
