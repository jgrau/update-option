class VersionsController < InheritedResources::Base
  belongs_to :product

  def create
    create! { products_url }
  end
  
  def update
    create! { products_url }
  end
  
  def destroy
    destroy! { products_url }
  end
end
