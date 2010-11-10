# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :website do |f|
  f.association :user
  f.association :client
  f.association :product
  f.association :version
end
