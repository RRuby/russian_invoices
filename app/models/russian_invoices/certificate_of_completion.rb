class RussianInvoices::CertificateOfCompletion < RussianInvoices::BaseModel

  attr_accessor :number, :from_date,
                :customer_name, :customer_inn, :customer_kpp, :customer_address,
                :performer_name, :performer_inn, :performer_kpp, :performer_address,
                :goods, :summ, :nds, :total_summ, :performer_signature

  validates :total_summ, presence: true, numericality: true
  validates_presence_of :number, :from_date,
                        :customer_name, :customer_inn, :customer_kpp, :customer_address,
                        :performer_name, :performer_inn, :performer_kpp, :performer_address

end
