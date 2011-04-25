Rails.application.routes.draw do
  scope "reports", :module => :rails_reports, :as => "rails_reports" do
    root :to => "main#index"
  end
end
