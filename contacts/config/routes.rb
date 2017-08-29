Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/contacts' => 'contacts#index'

post 'contacts' => 'contacts#create'
get 'contacts/new' => 'contacts#new'

get 'contacts/:id' => 'contacts#show'

root 'contacts#index'
get 'contacts' => 'contacts#index'

get 'contacts/:id/edit' => "contacts#edit"
patch 'contacts/:id' => "contacts#update"

delete 'contacts/:id' => 'contacts#destroy'
end
