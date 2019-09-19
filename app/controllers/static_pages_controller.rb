class StaticPagesController < ApplicationController

  caches_page :home, gzip: :best_speed

  respond_to :html

  def home
    show_extend = params[:run] == 'bi'
    render :home, locals: { show_extend: show_extend } 
  end

end
