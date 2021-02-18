Rails.application.routes.draw do
  resources :item_compras
  resources :compras
  resources :produtos
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
  resources :fornecedors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/teste/:nome' => 'teste#retorno'

  root 'home#index'


=begin
 
        namespace :jobs, defaults: { format: :json }, only: [:index, :create, :show, :update, :destroy]  do
          post '/authentications' => 'authentication#login', as: :login

          resources :vacancies

          get '/dynamic-options' => 'dynamic_fields#options'
          post '/dynamic-options' => 'dynamic_fields#add_option'
          get '/dynamic-fields' => 'dynamic_fields#index'

          resources :applicants, except: [:update]
          put '/applicants/:id' => 'applicants#create'
          get '/applicant/:cpf/talent_bank' => 'applicants#talent_bank'
          get '/applicant/:cpf/job_applications' => 'applicants#job_applications'
          post '/applicants/:cpf/apply/:vaga_id' => 'applicants#apply'

          get '/profilers/:id' => 'passports#show_profiler'
          post '/profilers' => 'passports#profiler'

          get '/companies/:slug' => "companies#show"
          get '/companies/:id/vacancies' => "companies#vacancies"

          match '*unmatched_route', :to => '/api#raise_not_found!', :via => :all

        end

  
=end


end
