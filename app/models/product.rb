class Product < ActiveRecord::Base
  belongs_to :author, :class_name => "User"
  has_many :versions, :order => 'name DESC', :dependent => :destroy
  has_many :websites, :dependent => :nullify
  
  def latest_version
    versions.first
  end
end
