RussianInvoices::Engine.routes.draw do

  namespace :documents do
    resources :commercial_invoices, only: :new
  end

end
