require "test_helper"

class DisciplinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get disciplines_index_url
    assert_response :success
  end
end
