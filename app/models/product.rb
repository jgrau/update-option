class Product < ActiveRecord::Base
  belongs_to :user
  has_many :versions, :order => 'name DESC', :dependent => :destroy
  has_many :websites, :dependent => :nullify
  
  def latest_version
    versions.first
  end
end
