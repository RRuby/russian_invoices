class RussianInvoices::CertificateOfCompletion < RussianInvoices::BaseModel

  attr_accessor :number, :from_date,
                :customer_name, :customer_inn, :customer_kpp, :customer_address,
                :performer_name, :performer_inn, :performer_kpp, :performer_address,
                :goods, :summ, :nds, :performer_signature, :performer_stamp

  validates :nds, numericality: true
  validates_presence_of :number, :from_date,
                        :customer_name, :customer_inn, :customer_kpp, :customer_address,
                        :performer_name, :performer_inn, :performer_kpp, :performer_address

  def total_summ
    goods.sum{ |good| good[:quantity]*good[:price] }.round(2)
  end

end
