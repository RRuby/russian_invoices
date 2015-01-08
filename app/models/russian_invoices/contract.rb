class RussianInvoices::Contract < RussianInvoices::BaseModel

  attr_accessor :number, :from_date,
                :customer_name, :customer_details, :customer_signature, :customer_print,
                :performer_name, :performer_details, :performer_signature, :performer_print

  validates_presence_of :number, :from_date, :customer_name, :customer_details,
                        :performer_name, :performer_details

end
