# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :version do |f|
  f.user nil
  f.product nil
  f.version "MyString"
  f.changelog "MyText"
  f.webaddress "MyString"
  f.position 1
end
