class StaticPagesController < ApplicationController

  caches_page :home, gzip: :best_speed

  respond_to :html

  def home
    show_bi = params[:bi] == 'true'
    show_test = params[:test] == 'true'
    render :home, locals: { show_bi: show_bi, show_test: show_test } 
  end

end
