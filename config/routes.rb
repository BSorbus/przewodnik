Rails.application.routes.draw do

  # devise_for :users, controllers: {
  #   confirmations: 'users/confirmations',
  #   passwords: 'users/passwords',
  #   registrations: 'users/registrations',
  #   sessions: 'users/sessions',
  #   unlocks: 'users/unlocks'
  # }

#          new_user_session GET      /users/saml/sign_in(.:format)                       devise/saml_sessions#new
#              user_session POST     /users/saml/auth(.:format)                          devise/saml_sessions#create
#      destroy_user_session DELETE   /users/sign_out(.:format)                           devise/saml_sessions#destroy
#     metadata_user_session GET      /users/saml/metadata(.:format)                      devise/saml_sessions#metadata
# idp_sign_out_user_session GET|POST /users/saml/idp_sign_out(.:format)                  devise/saml_sessions#idp_sign_out


  devise_for :users, controllers: {
    saml_sessions: 'users/saml_sessions'
  }

  scope "(:locale)", locale: /en|pl/ do

    get 'websites/my_account'
    get 'websites/with_sso_login'
    get 'websites/without_sso_login'

    # get 'datatables/lang'

    get 'static_pages/home'

    root to: 'static_pages#home'
	end

end
