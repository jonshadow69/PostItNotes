Rails.application.routes.draw do

  root 'pages#index'
  
  get 'index', to: 'pages#index'
  get 'about', to: 'pages#about'

  get 'notes', to: 'notes#index'
  get 'show_note/:id', to: 'notes#show', as: 'show_note'
  get 'new_note' => 'notes#new'
  post 'create_note' => 'notes#create'
  get 'edit_note/:id', to: 'notes#edit', as: 'edit_note'
  patch 'update_note/:id', to: 'notes#update', as: 'update_note'
  delete 'delete_note/:id', to: 'notes#delete', as: 'delete_note'

end

