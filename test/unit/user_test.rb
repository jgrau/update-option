require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context "A User instance" do
    setup do
      @user = Factory(:user)
    end
    
    should "have valid factory" do
      assert @user.valid?
    end
  end
  
end
