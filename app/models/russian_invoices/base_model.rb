class RussianInvoices::BaseModel

  include ActiveModel::Model
  define_model_callbacks :save

  def initialize(attributes = {})
    self.attributes = attributes
  end

  def persisted?
    false
  end

  def save
    run_callbacks :save do
      valid?
    end
  end

  def save!
    if save
      true
    else
      raise RussianInvoices::ValidationError
    end
  end

  def landscape?
    false
  end

  class << self

    def create(attributes)
      obj = new(attributes)
      obj.save!
      obj
    end
    alias create! create

  end

  private
  
    def attributes=(attributes)
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end

end
