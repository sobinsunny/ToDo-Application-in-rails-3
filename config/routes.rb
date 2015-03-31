Upgrade::Application.routes.draw do
  match '/' => 'users#login'
  resources :users do
    collection do
  get :login
  post :login
  get :changepassword
  post :changepassword
  get :logout
  get :emailcheck
  get :tasks_catagory
  end
  end
  resources :tasks do
    collection do
  put :update_task_progess
  post :share_task
  get :share_name_display
  put :changeorder_up
  put :changeorder_down
  get :search_task
  end
  end
  resources :users do
      resources :tasks do
          resources :comments
    end
  end
  resources :tasks do
      resources :comments
  end
  match '/:controller(/:action(/:id))'
end
