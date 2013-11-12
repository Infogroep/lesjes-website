Lesjes2::Application.routes.draw do
  resources :hosts
  resources :events do
	  resources :rsvps
  end

	root "events#index"
	get :login, to: 'pages#login', :as => :login
	get :logout, to: 'pages#logout', :as => :logout
	post :validate_login, to: 'pages#validate_login', :as => :validate_login
end
