require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  test "failed login" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { username: "miriam", password: "" }
    follow_redirect!
    assert_equal "/login", path
    assert_select 'span.navbar-text.float-xs-right', /login.*/
  end

  test "login" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { username: "miriam", password: "badpassword123" }
    follow_redirect!
    assert_equal "/", path
    assert_select 'span.navbar-text.float-xs-right', 'logout miriam'
  end
end
