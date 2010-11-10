class Client < ActiveRecord::Base
  belongs_to :user
  has_many :websites
  accepts_nested_attributes_for :websites, :allow_destroy => true, :reject_if => proc { |obj| obj.blank? }
  
  def website
    websites.first
  end
end
