class RussianInvoices::CommercialInvoice < RussianInvoices::BaseModel

  attr_accessor :invoice_number, :invoice_from_date, :correction_number, :correction_date,
                :seller_name, :seller_address, :seller_inn, :seller_kpp,
                :shipper_name, :shipper_address, :consignee_name, :consignee_address,
                :by_payment_documents, :buyer_name, :buyer_address, :buyer_inn, :buyer_kpp,
                :currency_name, :currency_code, :goods

  validates_presence_of :invoice_number, :invoice_from_date

  def landscape?
    true
  end

end
