Lesjes2::Application.routes.draw do
  resources :hosts
  resources :events do
	  resources :rsvps
  end
	root "events#index"
end
