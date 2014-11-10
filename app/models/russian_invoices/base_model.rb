class RussianInvoices::BaseModel

  include ActiveModel::Model

  def initialize(attributes = {})
    self.attributes = attributes
  end

  def persisted?
    false
  end

  def save
    valid?
  end

  def save!
    if valid?
      true
    else
      raise RussianInvoices::ValidationError
    end
  end

  class << self

    def create(attributes)
      new(attributes).save
    end

    def create!(attributes)
      new(attributes).save!
    end

  end

  private
  
    def attributes=(attributes)
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end

end
