require "test_helper"

class HealthsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get healths_index_url
    assert_response :success
  end
end
