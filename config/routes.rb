Rails.application.routes.draw do
  # resources :employees
  #resources :employees
  root "employees#index"
  resources :employees, param: :emp_no
  # get "employees/new/emp_no", to: 'employees#new', as: 'new_employee'
  # resources :employees, :except => [:new] 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
