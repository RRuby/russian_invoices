require 'wicked_pdf'
require 'haml-rails'
require 'ru_propisju'
require "russian_invoices/engine"
require "russian_invoices/settings"
require "russian_invoices/errors"

module RussianInvoices

  class Engine < ::Rails::Engine
    config.generators do |g|
      g.test_framework :rspec, fixture: false
      g.assets false
      g.helper false
    end
  end

end
