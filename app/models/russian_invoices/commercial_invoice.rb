class RussianInvoices::CommercialInvoice < RussianInvoices::BaseModel

  attr_accessor :invoice_number, :invoice_from_date, :correction_number, :correction_date

  validates_presence_of :invoice_number, :invoice_from_date

  before_save :prepare_data

  def landscape?
    true
  end

  protected

    def prepare_data
      self.invoice_number = invoice_number.to_s.rjust(6, '0')
      self.correction_number = if correction_number
        invoice_number.to_s.rjust(3, '0')
      else
        '---'
      end
      self.correction_date ||= '---'
    end

end
