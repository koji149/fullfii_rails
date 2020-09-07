Rails.application.routes.draw do
  root "pages#index"
  get  "pages/privacy" => "pages#privacy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
