Rails.application.routes.draw do

	get '/ffootball', to: 'static_pages#ffootball', as: 'ffootball'

	# Set the default page for the web app
	root to: 'static_pages#ffootball'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
