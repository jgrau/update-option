class ProductsController < InheritedResources::Base
  def create
    create! { collection_url }
  end
  
  def update
    update! { collection_url }
  end
end
