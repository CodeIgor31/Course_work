require "test_helper"

class TeachersDisciplinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_disciplines_index_url
    assert_response :success
  end
end
