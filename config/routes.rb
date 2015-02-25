Rails.application.routes.draw do

  resources :users, :only => [:index, :destroy, :new, :create, :edit] do
    resources :posts
  end
end