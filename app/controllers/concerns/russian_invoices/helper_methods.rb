module RussianInvoices
  module HelperMethods
    extend ActiveSupport::Concern

    included do
      helper_method HelperMethods.instance_methods
    end

    def test_render(doc, disposition='inline', orientation='Portrait')
      respond_to do |format|
        format.pdf do
          render(
            pdf: 'test',
            file: RussianInvoices::TEMPLATES[:test],
            layout:  RussianInvoices::LAYOUTS[:default]
          )
        end
      end
    end

  end
end
