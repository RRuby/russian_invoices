RussianInvoices::Engine.routes.draw do

  resources :commercial_invoices, only: :create

end
