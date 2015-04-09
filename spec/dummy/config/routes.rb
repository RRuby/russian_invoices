Rails.application.routes.draw do

  mount RussianInvoices::Engine => "/russian_invoices"

  root 'home#index'
  resources :home

end
