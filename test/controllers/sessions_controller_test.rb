require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get login form" do
    get new_session_url
    assert_response :success
  end

  test "should create session = login" do
    post sessions_url, params: { username: @user.username, password: 'badpassword123' }
    assert_redirected_to root_url
  end

end
