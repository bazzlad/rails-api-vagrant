Rails.application.routes.draw do
	namespace :api do
		resources :packages do 
			resources :additions
			resources :tags
			resources :hotels
		end
	end

	namespace :api do
		resources :additions
	end

	namespace :api do
		resources :tags
	end

	namespace :api do
		resources :hotels
	end
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
