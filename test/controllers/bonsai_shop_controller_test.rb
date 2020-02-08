require 'test_helper'

class BonsaiShopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bonsai_shop_index_url
    assert_response :success
  end

end
