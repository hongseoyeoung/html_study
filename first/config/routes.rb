Rails.application.routes.draw do
  get '/home/index'
  get '/home/delete/:post_id' =>'home#delete'
  get '/home/edit/:post_id' => 'home#edit'
  root 'home#index'
  post '/home/create' =>'home#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
