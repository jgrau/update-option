require 'test_helper'

class VersionTest < ActiveSupport::TestCase
  should "be valid" do
    assert Version.new.valid?
  end
end
