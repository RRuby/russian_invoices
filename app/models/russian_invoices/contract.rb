class RussianInvoices::Contract < RussianInvoices::BaseModel

  attr_accessor :number, :from_date, :name, :city, :body,
                :customer_details, :customer_position, :customer_signature, :customer_stamp,
                :performer_details, :performer_position, :performer_signature, :performer_stamp

  validates_presence_of :name, :number, :city, :from_date, :body,
                        :customer_details, :performer_details,
                        :customer_position, :performer_position

end
