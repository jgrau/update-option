class ProductsController < InheritedResources::Base
  load_and_authorize_resource :through => :current_user
  before_filter :assign_author, :only => [:create] 
  
  def create
    create! { collection_url }
  end
  
  def update
    update! { collection_url }
  end
  
  private 
    def assign_author 
      build_resource.author = current_user 
    end
end
