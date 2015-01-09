module RussianInvoices
  module HelperMethods
    extend ActiveSupport::Concern

    included do
      helper_method HelperMethods.instance_methods
    end

    def generate_document(doc, save_to_file=true)
      @doc = doc
      pdf = get_pdf(obj_type(doc))
      if save_to_file
        tmp_file = Tempfile.new(pdf[:document_type])
        tmp_file << pdf[:body]
        tmp_file.close
        tmp_file
      else
        pdf[:body]
      end
    end

    def generate_document_str(doc)
      generate_document(doc, false)
    end

    def render_pdf_document(doc, download=false)
      pdf_str = generate_document(doc, false)
      filename = obj_type(doc) + '.pdf'
      disposition = download ? 'inline', 'attachment'
      send_data(pdf_str, filename: filename, disposition: disposition, type: 'application/pdf')
    end

    def download_pdf_document(doc)
      render_pdf_document(doc, true)
    end

    private
      
      def get_pdf(type)
        str = render_to_string(
          pdf: type.to_s,
          template: template_path(type),
          layout: RussianInvoices::LAYOUTS[:pdf],
          encoding: 'UTF-8'
        )
        { body: str.force_encoding("UTF-8"), document_type: type }
      end

      def obj_type(obj)
        obj.class.name.split('::').last.underscore
      end

      def template_path(type)
        "/russian_invoices/documents/#{ type.to_s }.html.haml"
      end

  end
end
