Factory.define :user do |f|
  f.sequence(:email) { |n| "example#{n}@example.com" }
  f.password 'johnss1S'
  f.password_confirmation 'johnss1S'
end
