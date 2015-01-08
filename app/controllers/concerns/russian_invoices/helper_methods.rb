module RussianInvoices
  module HelperMethods
    extend ActiveSupport::Concern

    included do
      helper_method HelperMethods.instance_methods
    end

    def generate_document(doc)
      type = obj_type(obj)
      unless type.to_sym.in? RussianInvoices::TEMPLATES.keys
        raise RussianInvoices::UndefinedDocumentType
      end
      @doc = doc
      get_pdf(type)
    end

    private
      
      def get_pdf(type)
        render_to_string(
          pdf: type.to_s,
          template: template_path(type),
          layout:RussianInvoices::LAYOUTS[:pdf]
        )
      end

      def obj_type(obj)
        obj.class.name.split('::').last.underscore
      end

      def template_path(type)
        "/russian_invoices/documents/#{ type.to_s }.haml"
      end

  end
end
