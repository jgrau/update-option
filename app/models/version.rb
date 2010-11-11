class Version < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  has_many :websites, :dependent => :nullify
end
