require "test_helper"

class Admin::ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_profile_index_url
    assert_response :success
  end
end
