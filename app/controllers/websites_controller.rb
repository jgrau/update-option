class WebsitesController < InheritedResources::Base
  load_and_authorize_resource :through => :current_user
  
  def create
    create! { root_path }
  end
  
  def update
    update! { root_path }
  end
  
  def new
    @website = Website.new
    @website.build_client()
    new!
  end
  
  protected
    def begin_of_association_chain
      current_user
    end
end
