$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "russian_invoices/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "russian_invoices"
  s.version     = RussianInvoices::VERSION
  s.authors     = ["Nikulin Aleksander"]
  s.email       = ["info@rubyruby.ru"]
  s.homepage    = "https://github.com/RRuby/russian_invoices"
  s.summary     = "Gem for generating pdf documents."
  s.description = "Gem for generating pdf documents."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'simplecov'
  s.add_dependency 'haml-rails'
  s.add_dependency 'sass-rails'
  s.add_dependency 'wicked_pdf'
  s.add_dependency 'wkhtmltopdf-binary'
  s.add_dependency 'ru_propisju'
  

end
