class WebsitesController < ApplicationController

  before_action :authenticate_user!, only: [:with_sso_login]
 
  respond_to :html

  def my_account
    url = Rails.application.secrets[:idp_for_production_instance] ? "https://csuext.uke.gov.pl/accounts" : "https://testcsuext.uke.gov.pl/accounts"
    redirect_to url
  end

  def with_sso_login
    check_with_sso_login(params[:app])
    session[:app] = params[:app]
    redirect_to root_path()
  end

  def without_sso_login
    check_without_sso_login(params[:app])
    session[:app] = params[:app]
    redirect_to root_path()
  end

  private
    def check_with_sso_login(appname)
      unless ['cbo_admin', 'csuext', 'egzaminy', 'esod', 'esod_admin', 'intranet', 'pit', 'pue', 'pue_admin', 
              'test_cbo_admin', 'test_csuext', 'test_egzaminy', 'test_esod', 'test_esod_admin', 'test_intranet', 'test_pit', 'test_pue', 'test_pue_adm'].include?(appname)
         raise "Ruby injection"
      end
    end

    def check_without_sso_login(appname)
      unless ['netpar2015', 'pola', 'szkolenia', 'amator', 'confirmation', 'legalis', 'mapbook', 'numeracja', 'wyszukiwarka', 
              'test_netpar2015', 'test_pola'].include?(appname)
         raise "Ruby injection"
      end
    end

end
