# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :client do |f|
  f.association :user
  f.name "SJP A/S"
end
