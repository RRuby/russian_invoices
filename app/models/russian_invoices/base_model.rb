class RussianInvoices::BaseModel

  include ActiveModel::Model

  def initialize(attributes = {})
    self.attributes = attributes
  end

  def persisted?
    false
  end

  def self.create(attributes)
    instance = self.new(attributes)
    if instance.valid?
      #generate and save PDF
    else
      false
    end
  end

  private
  
    def attributes=(attributes)
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end

end
