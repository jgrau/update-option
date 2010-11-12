class VersionsController < InheritedResources::Base
  load_and_authorize_resource :through => :current_user
  belongs_to :product
  before_filter :assign_author, :only => [:create] 

  def create
    # @version = Product.new(params[:version])
    create! { products_url }
  end
  
  def update
    create! { products_url }
  end
  
  def destroy
    destroy! { products_url }
  end
  
  private 
    def assign_author 
      build_resource.author = current_user 
    end
end
