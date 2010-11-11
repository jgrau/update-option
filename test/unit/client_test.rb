require 'test_helper'

class ClientTest < Test::Unit::TestCase
  context "A client instance" do
    setup do
      @client = Factory(:client)
    end

    should "have valid factory" do
      assert @client.valid?
    end
  end
  
end
