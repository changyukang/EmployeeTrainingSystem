Rails.application.routes.draw do
  resources :scores
  get 'search', to: 'search#search'
  resources :quizzes
  resources :course_progresses
  get '/wikis/',    to: 'courses#show_wikis'
  get '/quizzes/',    to: 'courses#show_quizzes'
  get '/article_wikis/',    to: 'courses#show_article_wikis'
  get '/article_quizzes/',    to: 'courses#show_article_quizzes'
  resources :courses
  resources :articles
  get 'sessions/new'
  root 'static_pages#home'
    get  '/help',    to: 'static_pages#help'
    get  '/about',   to: 'static_pages#about'
    get  '/contact', to: 'static_pages#contact'
    get  '/quiz1', to: 'static_pages#quiz1'
    get  '/quiz2', to: 'static_pages#quiz2'
    get  '/signup',  to: 'users#new'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
    resources :users
    resources :groups
    resources :user_groups
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
