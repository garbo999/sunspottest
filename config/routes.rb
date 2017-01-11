Rails.application.routes.draw do

  #get 'search_1' => 'static_pages#search_1'

  root to: 'static_pages#home'

  resources :sentences

end
