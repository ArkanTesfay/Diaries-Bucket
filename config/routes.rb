Rails.application.routes.draw do
	devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "welcome#home"

  #get "new_post", to: "diaries#new"
  #post "new_post", to: "diaries#create"

 # get "my_diaries", to:"diaries#index"

  delete "remove_post", to:"diaries#destroy"


  resources :diaries, except: [:delete]

end
