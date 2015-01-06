module RussianInvoices
  module HelperMethods
    extend ActiveSupport::Concern

    included do
      helper_method HelperMethods.instance_methods
    end

    def test_render(doc, disposition='inline', orientation='Portrait')
      respond_to do |format|
        format.pdf { render text: PDFKit.new('http://google.com').to_pdf }
      end
    end

  end
end
