class ClientsController < InheritedResources::Base
  def create
    create! { root_path }
  end
  
  def update
    update! { root_path }
  end
  
  def new
    @client = Client.new
    @client.websites.build()
    new!
  end
end
