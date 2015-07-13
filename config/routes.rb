EmbededApp::Application.routes.draw do

  root :to => 'recommendation_forms#new'
  
  resources :recommendation_forms, only: [:edit, :new,:update] do
    get 'reset_form', as: :reset_form
  end

  resources :recommendations, only: [:new, :create] do
    collection do
      get 'customer_profiles'
      get 'send_emails'
    end
  end
end
