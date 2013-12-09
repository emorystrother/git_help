GitHelp::Application.routes.draw do
  devise_for :task_havers
  devise_for :students
  # get '/', controller: 'landing', action: 'home', as: 'root'
  root 'landing#home'

  # Routes for the Chore_type_history resource:
  # CREATE
  get '/chore_type_histories/new', controller: 'chore_type_histories', action: 'new', as: 'new_chore_type_history'
  post '/chore_type_histories', controller: 'chore_type_histories', action: 'create', as: 'chore_type_histories'

  # READ
  get '/chore_type_histories', controller: 'chore_type_histories', action: 'index'
  get '/chore_type_histories/:id', controller: 'chore_type_histories', action: 'show', as: 'chore_type_history'

  # UPDATE
  get '/chore_type_histories/:id/edit', controller: 'chore_type_histories', action: 'edit', as: 'edit_chore_type_history'
  patch '/chore_type_histories/:id', controller: 'chore_type_histories', action: 'update'

  # DELETE
  delete '/chore_type_histories/:id', controller: 'chore_type_histories', action: 'destroy'
  #------------------------------

  # Routes for the Type_of_chore resource:
  # CREATE

  get '/type_of_chores/new', controller: 'type_of_chores', action: 'new', as: 'new_type_of_chore'
  post '/type_of_chores', controller: 'type_of_chores', action: 'create', as: 'type_of_chores'

  # READ
  get '/type_of_chores', controller: 'type_of_chores', action: 'index'
  get '/type_of_chores/:id', controller: 'type_of_chores', action: 'show', as: 'type_of_chore'

  # UPDATE
  get '/type_of_chores/:id/edit', controller: 'type_of_chores', action: 'edit', as: 'edit_type_of_chore'
  patch '/type_of_chores/:id', controller: 'type_of_chores', action: 'update'

  # DELETE
  delete '/type_of_chores/:id', controller: 'type_of_chores', action: 'destroy'
  #------------------------------

  # Routes for the Student resource:
  # CREATE
  get '/students/new', controller: 'students', action: 'new', as: 'new_student'
  post '/students', controller: 'students', action: 'create', as: 'students'

  # READ
  get '/students', controller: 'students', action: 'index'
  get '/students/:id', controller: 'students', action: 'show', as: 'student'

  # UPDATE
  get '/students/:id/edit', controller: 'students', action: 'edit', as: 'edit_student'
  patch '/students/:id', controller: 'students', action: 'update'

  # DELETE
  delete '/students/:id', controller: 'students', action: 'destroy'
  #------------------------------

  # Routes for the Task_haver resource:
  # CREATE
  get '/task_havers/new', controller: 'task_havers', action: 'new', as: 'new_task_haver'
  post '/task_havers', controller: 'task_havers', action: 'create', as: 'task_havers'

  # READ
  get '/task_havers', controller: 'task_havers', action: 'index'
  get '/task_havers/:id', controller: 'task_havers', action: 'show', as: 'task_haver'

  # UPDATE
  get '/task_havers/:id/edit', controller: 'task_havers', action: 'edit', as: 'edit_task_haver'
  patch '/task_havers/:id', controller: 'task_havers', action: 'update'

  # DELETE
  delete '/task_havers/:id', controller: 'task_havers', action: 'destroy'
  #------------------------------

  # Routes for the Chore resource:
  # CREATE
  get '/chores/new', controller: 'chores', action: 'new', as: 'new_chore'
  post '/chores', controller: 'chores', action: 'create', as: 'chores'

  # READ
  get '/chores', controller: 'chores', action: 'index'
  get '/chores/:id', controller: 'chores', action: 'show', as: 'chore'

  # UPDATE
  get '/chores/:id/edit', controller: 'chores', action: 'edit', as: 'edit_chore'
  patch '/chores/:id', controller: 'chores', action: 'update'

  # DELETE
  delete '/chores/:id', controller: 'chores', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
