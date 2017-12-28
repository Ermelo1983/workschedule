require 'test_helper'

class WhoamiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get whoami_index_url
    assert_response :success
  end

end
