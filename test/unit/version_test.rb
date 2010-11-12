require 'test_helper'

class VersionTest < ActiveSupport::TestCase
  context "A version instance" do
    setup do
      @version = Factory(:version)
    end

    should "have valid factory" do
      assert @version.valid?
    end
  end
  
end
