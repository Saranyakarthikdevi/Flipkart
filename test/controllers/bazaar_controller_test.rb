require 'test_helper'

class BazaarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bazaar_index_url
    assert_response :success
  end

end
