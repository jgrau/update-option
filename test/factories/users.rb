Factory.sequence :email do |n|
  'email' + n.to_s + '@example.com'
end

Factory.define :user do |f|
  f.email Factory.next(:email)
  # f.sequence(:email) { |n| "example#{n}@example.com" }
  f.password 'johnss1S'
  f.password_confirmation 'johnss1S'
end