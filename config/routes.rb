Rails.application.routes.draw do
  resources :user_groups
  resources :groups
  resources :articles
  get 'sessions/new'
	root 'static_pages#home'
  	get  '/help',    to: 'static_pages#help'
  	get  '/about',   to: 'static_pages#about'
  	get  '/contact', to: 'static_pages#contact'
	get  '/courses',  to: 'static_pages#courses'
  	get  '/signup',  to: 'users#new'
  	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
	delete '/logout',  to: 'sessions#destroy'
	get  '/wiki',   to: 'static_pages#wiki'
	get  '/quiz',    to: 'static_pages#quiz'
	get '/wikis/',    to: 'static_pages#show_wikis'
	get '/quizzes/',    to: 'static_pages#show_quizzes'
  	resources :users
	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
