require 'test_helper'

class WebsiteTest < Test::Unit::TestCase
  context "A website" do
    setup do
      @website = Factory(:website)
    end

    should "have valid factory" do
      @website.valid?
    end
  end
  
end
