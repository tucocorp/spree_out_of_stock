Spree::Core::Engine.routes.draw do
    namespace :admin do
      resources :reports, :only => [:index, :show] do  # <= add this block
        collection do
          get :sales_total
          post :sales_total
          get :out_of_stock
          post :out_of_stock
        end
      end
    end
end
