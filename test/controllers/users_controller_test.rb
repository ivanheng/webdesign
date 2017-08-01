require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  test "should get new" do
    get signup_path
    assert_response :success
  end
  # end
end
