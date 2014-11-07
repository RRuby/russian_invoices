class RussianInvoices::Invoice

  include ActiveModel::Model

  attr_accessor :invoice_number, :invoice_from_date
  validates :invoice_number, presence: true, numericality: true
  validates :invoice_from_date, presence: true

  def initialize(attributes = {})
    self.attributes = attributes
  end

  def persisted?
    false
  end

  private
  
    def attributes=(attributes)
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end

end
