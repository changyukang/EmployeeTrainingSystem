Rails.application.routes.draw do
  resources :user_courses
  resources :scores
  get 'search', to: 'search#search'

  resources :quizzes do
    collection do
      post 'grading'
    end
  end

  get '/wikis/',    to: 'courses#show_wikis'
  get '/quizzes/',    to: 'courses#show_quizzes'
  get '/mycourses/',    to: 'courses#show_user_courses'
  get '/new/',    to: 'courses#new'
  get '/data/',    to: 'scores#show_data'
  resources :courses
  resources :articles
  get 'sessions/new'
  root 'static_pages#home'
    get  '/help',    to: 'static_pages#help'
    get  '/about',   to: 'static_pages#about'
    get  '/contact', to: 'static_pages#contact'
    get  '/signup',  to: 'users#new'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/managerHome/',    to: 'static_pages#managerHome'
    get '/status/',    to: 'static_pages#status'
  
    resources :users
    resources :groups
    resources :user_groups
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
