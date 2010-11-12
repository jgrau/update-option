class Website < ActiveRecord::Base
  belongs_to :user
  belongs_to :client
  belongs_to :product
  belongs_to :version
  accepts_nested_attributes_for :client
  
  def up_to_date?
    if product && version
      if version == product.latest_version
        return true
      end
    end
    
    return false
  end
end
