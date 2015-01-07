module RussianInvoices
  module HelperMethods
    extend ActiveSupport::Concern

    included do
      helper_method HelperMethods.instance_methods
    end

    def test_render(doc, disposition='inline', orientation='Portrait')
      render(
        pdf: 'test',
        template: RussianInvoices::TEMPLATES[:test]
      )
    end

  end
end
