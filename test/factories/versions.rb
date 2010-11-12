# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :version do |f|
  f.association :author, :factory => :user
  f.association :product
  f.name "1.0.1"
  f.changelog "So many changes you have to update"
  f.webaddress "MyString"
  f.position 1
end
