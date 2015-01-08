class RussianInvoices::Contract < RussianInvoices::BaseModel

  attr_accessor :number, :from_date,
                :customer_name, :customer_details, :customer_signature, :customer_print,
                :performer_name, :performer_details, :performer_signature, :performer_print

  validates :number, presence: true
  validates :from_date, presence: true
  validates :customer_name, presence: true
  validates :customer_details, presence: true
  validates :performer_name, presence: true
  validates :performer_details, presence: true

end
