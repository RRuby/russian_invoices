module RussianInvoices
  module HelperMethods
    extend ActiveSupport::Concern

    included do
      helper_method HelperMethods.instance_methods
    end

    def generate_document(type, doc)
      case type
      when 'test'
      else
        raise RussianInvoices::UndefinedDocumentType
      end
    end

    def test_render(doc)
      pdf = render_to_string(
        pdf: "test",
        template: RussianInvoices::TEMPLATES[:test],
        layout:RussianInvoices::LAYOUTS[:pdf]
      )
      save_path = Rails.root.join(Rails.root ,'public','filename.pdf')
      File.open(save_path, 'wb') do |file|
        file << pdf
      end
    end

  end
end
