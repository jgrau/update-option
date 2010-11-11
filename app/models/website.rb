class Website < ActiveRecord::Base
  belongs_to :user
  belongs_to :client
  belongs_to :product
  belongs_to :version
  accepts_nested_attributes_for :client
end
