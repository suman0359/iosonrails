Consigliere::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  
  devise_for :users, :path_names => { :sign_up => "register", :sign_in => "signin", :sign_out => "signout" }

  root to: "pages#about"

  resources :articles

  get "/:action", to: "pages#:action"
end