class StaticPagesController < ApplicationController

  caches_page :home, gzip: :best_speed

  respond_to :html

  def home
  end

end
