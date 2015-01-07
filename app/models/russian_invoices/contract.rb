class RussianInvoices::Contract < RussianInvoices::BaseModel

  attr_accessor :number, :from_date

  validates :number, presence: true
  validates :from_date, presence: true

end
