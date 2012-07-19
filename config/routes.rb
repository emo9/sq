SocialQuotes::Application.routes.draw do
  devise_for :users

  resources :quotes

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)
 SocialQuotes::Application.routes.draw do
  devise_for :users

   resources :quotes
   root :to => "quotes#index"
 end
end
#== Route Map
# Generated on 19 Jul 2012 19:59
#
#             user_session POST   /users/sign_in(.:format)          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
#            user_password POST   /users/password(.:format)         devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
#                          PUT    /users/password(.:format)         devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
#        user_registration POST   /users(.:format)                  devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit
#                          PUT    /users(.:format)                  devise/registrations#update
#                          DELETE /users(.:format)                  devise/registrations#destroy
#        user_confirmation POST   /users/confirmation(.:format)     devise/confirmations#create
#    new_user_confirmation GET    /users/confirmation/new(.:format) devise/confirmations#new
#                          GET    /users/confirmation(.:format)     devise/confirmations#show
#                   quotes GET    /quotes(.:format)                 quotes#index
#                          POST   /quotes(.:format)                 quotes#create
#                new_quote GET    /quotes/new(.:format)             quotes#new
#               edit_quote GET    /quotes/:id/edit(.:format)        quotes#edit
#                    quote GET    /quotes/:id(.:format)             quotes#show
#                          PUT    /quotes/:id(.:format)             quotes#update
#                          DELETE /quotes/:id(.:format)             quotes#destroy
#         new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
#                          POST   /users/sign_in(.:format)          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
#                          POST   /users/password(.:format)         devise/passwords#create
#                          GET    /users/password/new(.:format)     devise/passwords#new
#                          GET    /users/password/edit(.:format)    devise/passwords#edit
#                          PUT    /users/password(.:format)         devise/passwords#update
#                          GET    /users/cancel(.:format)           devise/registrations#cancel
#                          POST   /users(.:format)                  devise/registrations#create
#                          GET    /users/sign_up(.:format)          devise/registrations#new
#                          GET    /users/edit(.:format)             devise/registrations#edit
#                          PUT    /users(.:format)                  devise/registrations#update
#                          DELETE /users(.:format)                  devise/registrations#destroy
#                          POST   /users/confirmation(.:format)     devise/confirmations#create
#                          GET    /users/confirmation/new(.:format) devise/confirmations#new
#                          GET    /users/confirmation(.:format)     devise/confirmations#show
#                          GET    /quotes(.:format)                 quotes#index
#                          POST   /quotes(.:format)                 quotes#create
#                          GET    /quotes/new(.:format)             quotes#new
#                          GET    /quotes/:id/edit(.:format)        quotes#edit
#                          GET    /quotes/:id(.:format)             quotes#show
#                          PUT    /quotes/:id(.:format)             quotes#update
#                          DELETE /quotes/:id(.:format)             quotes#destroy
#                     root        /                                 quotes#index
