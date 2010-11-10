class Website < ActiveRecord::Base
  belongs_to :user
  belongs_to :client
  belongs_to :product
  belongs_to :version
end
