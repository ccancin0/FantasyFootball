Rails.application.routes.draw do

  resources :leagues
  resources :league_profiles
  resources :teams
  resources :players
  resources :stats
	get '/ffootball', to: 'static_pages#ffootball', as: 'ffootball'

	# Set the default page for the web app
	root to: 'static_pages#ffootball'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
