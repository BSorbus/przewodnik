class WebsitesController < ApplicationController

  #before_action :authenticate_user!, only: [:esod, :pue, :pit, :intranet]
  before_action :authenticate_user!, except: [:my_account, :szkolenia, :netpar2015, :test_netpar2015, :pola, :test_pola, :legalis, :amator, :wyszukiwarka, :confirmation, :mapbook, :numeracja]

  respond_to :html

  def my_account
    url = Rails.application.secrets[:idp_for_production_instance] ? "https://csuext.uke.gov.pl/accounts" : "https://testcsuext.uke.gov.pl/accounts"
    redirect_to url
  end

  def csuext
    # nie
    redirect_to "https://csuext.uke.gov.pl/api/dashboard/Auth/SamlInit"
  end

  def test_csuext
    # OK
    redirect_to "https://testcsuext.uke.gov.pl/api/dashboard/Auth/SamlInit"
  end

  def esod
#    <%= link_to 'https://esod.uke.gov.pl/sso/login', :method=>'post', :target => "_blank", class: "btn btn-primary" do %>   
  end

  def test_esod
#    <%= link_to 'https://testesod.uke.gov.pl/sso/login', :method=>'post', :target => "_blank", class: "btn btn-primary" do %>   
  end

  def esod_admin
#    <%= link_to 'https://esod.uke.gov.pl/admin/sso/login', :method=>'post', :target => "_blank", class: "btn btn-primary" do %>   
  end

  def test_esod_admin
#    <%= link_to 'https://testesod.uke.gov.pl/admin/sso/login', :method=>'post', :target => "_blank", class: "btn btn-primary" do %>   
  end

  def pue
    redirect_to "https://pue.uke.gov.pl/api/Token/Sso/Init"
  end

  def test_pue
    redirect_to "https://testpue.uke.gov.pl/api/Token/Sso/Init"
  end

  def pue_adm
    # OK
    redirect_to "https://admpue.uke.gov.pl/api/token/sso/init"
  end

  def test_pue_adm
     # 400
    redirect_to "https://testadmpue.uke.gov.pl/api/token/sso/init"
  end

  def cbo_admin
    # nie
    redirect_to "https://cboadmin.uke.gov.pl/api/token/sso/init"
  end

  def test_cbo_admin
    redirect_to "https://testcboadmin.uke.gov.pl/login"
  end

  def pit
    redirect_to "https://pit.uke.gov.pl/umbraco/surface/SSO/Login"
  end

  def test_pit
    redirect_to "https://testpit.uke.gov.pl/umbraco/surface/SSO/Login"
  end

  def intranet
#   redirect_to "https://intranet.uke.gov.pl"
  end

  def test_intranet
#   redirect_to "https://testintranet.uke.gov.pl"
  end

  def szkolenia # without CSU
    redirect_to "http://e-szkolenia.uke.gov.pl/moodle/"
  end

  def netpar2015 # without CSU
    redirect_to "https://netpar2015.uke.gov.pl"
  end

  def test_netpar2015 # without CSU
    redirect_to "https://netpar2015-test.uke.gov.pl"
  end

  def pola # without CSU
    redirect_to "https://pola.uke.gov.pl"
  end

  def test_pola # without CSU
    redirect_to "https://pola-test.uke.gov.pl"
  end

  def egzaminy
    redirect_to "https://egzaminy.uke.gov.pl/users/saml/sign_in"
  end

  def test_egzaminy
    redirect_to "https://egzaminy-test.uke.gov.pl/users/saml/sign_in"
  end


  # without login
  def legalis
    redirect_to "https://legalis.uke.gov.pl/index.html"
  end

  def amator
    redirect_to "https://amator.uke.gov.pl/pl"
  end

  def wyszukiwarka
  	redirect_to "https://wyszukiwarka.uke.gov.pl"
  end

  def confirmation
  	redirect_to "https://confirmation.uke.gov.pl/pl"
  end

  def mapbook
  	redirect_to "https://mapbook.uke.gov.pl"
  end

  def numeracja
  	redirect_to "https://numeracja.uke.gov.pl/pl"
  end

end
