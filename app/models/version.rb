class Version < ActiveRecord::Base
  belongs_to :author, :class_name => "User"
  belongs_to :product
  has_many :websites, :dependent => :nullify
end
