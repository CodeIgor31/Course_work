require "test_helper"

class AttemptsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attempts_index_url
    assert_response :success
  end
end
