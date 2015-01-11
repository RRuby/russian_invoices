$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "russian_invoices/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "russian_invoices"
  s.version     = RussianInvoices::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RussianInvoices."
  s.description = "TODO: Description of RussianInvoices."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 4.1.4'
  s.add_dependency 'haml-rails'
  s.add_dependency 'wicked_pdf'
  s.add_dependency 'wkhtmltopdf-binary'
  s.add_dependency 'ru_propisju'
  

end
