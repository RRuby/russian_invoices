class RussianInvoices::Invoice < RussianInvoices::BaseModel

  attr_accessor :invoice_number, :invoice_from_date
  validates :invoice_number, presence: true, numericality: true
  validates :invoice_from_date, presence: true

end
