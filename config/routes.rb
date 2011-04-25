Rails.application.routes.draw do
  resources :reports
  match '/reports' => "application#index"
end
