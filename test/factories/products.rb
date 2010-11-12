# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :product do |f|
  # f.association :author, :factory => :user
  f.name "MyString"
  f.webaddress "MyString"
end
