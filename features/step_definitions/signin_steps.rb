Given /^that a user exists$/ do
  Factory.create(:user)
end

# Session
Given /^I am logged in$/ do
  @user = Factory.create(:user)
  visit path_to('the new user session page')
  fill_in('user_email', :with => @user.email)
  fill_in('user_password', :with => @user.password)
  click_button('Sign in')
  if defined?(Spec::Rails::Matchers)
    page.should have_content('Signed in successfully')
  else
    assert page.has_content?('Signed in successfully')
  end
end

Given /^I am logged out$/ do
  visit path_to('the destroy user session page')
end