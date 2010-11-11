class WebsitesController < InheritedResources::Base
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
end
