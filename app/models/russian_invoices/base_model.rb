class RussianInvoices::BaseModel

  include ActiveModel::Model

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
