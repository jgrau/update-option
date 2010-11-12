require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  context "A product instance" do
    setup do
      @product = Factory(:product)
    end

    should "have valid factory" do
      assert @product.valid?
    end
  end
  
end
