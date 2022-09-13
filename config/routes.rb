Rails.application.routes.draw do
  devise_for :users
  resources :people
  get "welcome/say_hello" => "welcome#say"
  get "welcome" => "welcome#index"

  root :to => "welcome#index"

  namespace :admin do
    resources :events
    root "events#index"
  end

  resources :events do
    resources :attendees
    resource :location, controller: 'event_locations'
    resources :memberships

    collection do
      get :latest
      post :bulk_delete
      post :bulk_update
    end

    member do
      get :dashboard
      # post :join
      # post :withdraw
    end
  end
end
